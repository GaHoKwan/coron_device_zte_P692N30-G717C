.class public Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;
.super Landroid/app/Activity;
.source "BatteryInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final EXIST_A:I = 0x2

.field static final EXIST_AB:I = 0x0

.field static final EXIST_B:I = 0x1

.field static final EXIST_NONE:I = 0x3

.field private static final INTENT_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_DUAL_BATTERY_CHANGED"

.field private static final TAG:Ljava/lang/String; = "BatteryInfo"

.field private static final UPDATE_TEXTVIEW_BATTERY:I = 0x1

.field private static final UPDATE_TEXTVIEW_BATTERY_STATUS:I = 0x2


# instance fields
.field private battery:Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDoul_battery:Z

.field private mHandler:Landroid/os/Handler;

.field private mOtherInfo:Landroid/widget/TextView;

.field private mOtherInfoString:Ljava/lang/String;

.field private mOtherInfoTV:Landroid/widget/TextView;

.field private statusString:Ljava/lang/String;

.field private tv_battery:Landroid/widget/TextView;

.field private tv_batteryStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mDoul_battery:Z

    .line 41
    new-instance v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$2;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mDoul_battery:Z

    return v0
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$184(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$484(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->tv_battery:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$684(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->tv_batteryStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 86
    const v2, 0x7f070020

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->tv_battery:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->tv_batteryStatus:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f070024

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoTV:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfo:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f070025

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, doul_control:Landroid/view/View;
    iget-boolean v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mDoul_battery:Z

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_0
    const v2, 0x7f070026

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 97
    .local v0, bt:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bt:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 99
    .restart local v0       #bt:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bt:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 101
    .restart local v0       #bt:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void

    .line 94
    .end local v0           #bt:Landroid/widget/Button;
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 228
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 241
    :pswitch_0
    return-void

    .line 228
    :pswitch_data_0
    .packed-switch 0x7f070027
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->hideAutoButtons(Landroid/app/Activity;)V

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mDoul_battery:Z

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, filter:Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mDoul_battery:Z

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "android.intent.action.ACTION_DUAL_BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->initView()V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    return-void
.end method

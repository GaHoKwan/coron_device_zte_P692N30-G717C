.class public abstract Lcom/amoi/AmoiEngineerMode/base/BatteryBase;
.super Landroid/app/Activity;
.source "BatteryBase.java"


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

.field protected exitButton:Landroid/widget/Button;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDoul_battery:Z

.field private mHandler:Landroid/os/Handler;

.field private mOtherInfo:Landroid/widget/TextView;

.field private mOtherInfoString:Ljava/lang/String;

.field private mOtherInfoTV:Landroid/widget/TextView;

.field protected nextButton:Landroid/widget/Button;

.field protected prevButton:Landroid/widget/Button;

.field private statusString:Ljava/lang/String;

.field private tv_battery:Landroid/widget/TextView;

.field private tv_batteryStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mDoul_battery:Z

    .line 95
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mDoul_battery:Z

    return v0
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$184(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$484(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->tv_battery:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$684(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->tv_batteryStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected abstract initButton()V
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 42
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->setContentView(I)V

    .line 43
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->prevButton:Landroid/widget/Button;

    .line 44
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->nextButton:Landroid/widget/Button;

    .line 45
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->exitButton:Landroid/widget/Button;

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mDoul_battery:Z

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, filter:Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mDoul_battery:Z

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "android.intent.action.ACTION_DUAL_BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->tv_battery:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->tv_batteryStatus:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoTV:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfo:Landroid/widget/TextView;

    .line 61
    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)V

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->initView()V

    .line 38
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->initButton()V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    return-void
.end method

.method protected abstract showButton(I)V
.end method

.class public Lcom/mediatek/engineermode/power/ChargeBattery;
.super Landroid/app/Activity;
.source "ChargeBattery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;
    }
.end annotation


# static fields
.field private static final EVENT_UPDATE:I = 0x1

.field private static final FORMART_TEN:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "EM_BATTERY_CHARGE"

.field private static final UPDATE_INTERVAL:I = 0x5dc


# instance fields
.field private mCmdString:Ljava/lang/String;

.field private final mFiles:[[Ljava/lang/String;

.field private mInfo:Landroid/widget/TextView;

.field private mRun:Z

.field public mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mInfo:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/mediatek/engineermode/power/ChargeBattery$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/power/ChargeBattery$1;-><init>(Lcom/mediatek/engineermode/power/ChargeBattery;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mUpdateHandler:Landroid/os/Handler;

    .line 124
    const/16 v0, 0x23

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ADC_Charger_Voltage"

    aput-object v2, v1, v4

    const-string v2, "mV"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Power_On_Voltage"

    aput-object v2, v1, v4

    const-string v2, "mV"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Power_Off_Voltage"

    aput-object v2, v1, v4

    const-string v2, "mV"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Charger_TopOff_Value"

    aput-object v3, v2, v4

    const-string v3, "mV"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FG_Battery_CurrentConsumption"

    aput-object v3, v2, v4

    const-string v3, "mA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_0_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_1_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_2_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_3_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_4_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_5_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_6_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_7_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_8_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_9_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_10_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_11_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_12_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_13_Slope"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_0_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_1_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_2_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_3_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_4_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_5_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_6_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_7_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_8_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_9_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_10_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_11_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_12_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ADC_Channel_13_Offset"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;

    .line 139
    iput-boolean v4, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mRun:Z

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/power/ChargeBattery;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/power/ChargeBattery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mRun:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/power/ChargeBattery;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/power/ChargeBattery;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/power/ChargeBattery;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, result:Ljava/lang/String;
    const/4 v4, 0x3

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    aput-object p1, v0, v4

    .line 94
    .local v0, cmdx:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, ret:I
    if-nez v3, :cond_0

    .line 96
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v0           #cmdx:[Ljava/lang/String;
    .end local v3           #ret:I
    :goto_0
    return-object v2

    .line 99
    .restart local v0       #cmdx:[Ljava/lang/String;
    .restart local v3       #ret:I
    :cond_0
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 101
    .end local v0           #cmdx:[Ljava/lang/String;
    .end local v3           #ret:I
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    const-string v4, "EM_BATTERY_CHARGE"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "ERR.JE"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x10

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 65
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mInfo:Landroid/widget/TextView;

    .line 67
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    const-string v0, "cat /sys/devices/platform/mt6573-battery/"

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 72
    const-string v0, "cat /sys/devices/platform/mt6329-battery/"

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 77
    const-string v0, "cat /sys/devices/platform/mt6329-battery/"

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 79
    const-string v0, "cat /sys/devices/platform/mt6320-battery/"

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_3
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 81
    const-string v0, "cat /sys/devices/platform/battery/"

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mRun:Z

    .line 188
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/power/ChargeBattery;->mRun:Z

    .line 194
    new-instance v0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;-><init>(Lcom/mediatek/engineermode/power/ChargeBattery;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 200
    return-void
.end method

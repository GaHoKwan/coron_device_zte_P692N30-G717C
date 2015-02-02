.class public Lcom/mediatek/engineermode/power/PMU6575;
.super Landroid/app/TabActivity;
.source "PMU6575.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/power/PMU6575$RunThread;
    }
.end annotation


# static fields
.field private static final CMD_GET_MT6333_ACCESS:Ljava/lang/String; = "echo %1$s > /sys/devices/platform/mt6333-user/mt6333_access"

.field private static final CMD_SET_MT6333_ACCESS:Ljava/lang/String; = "echo %1$s %2$s > /sys/devices/platform/mt6333-user/mt6333_access"

.field private static final EVENT_UPDATE:I = 0x1

.field private static final FS_MT6333_ACCESS:Ljava/lang/String; = "/sys/devices/platform/mt6333-user/mt6333_access"

.field private static final MAGIC_TEN:F = 10.0f

.field private static final MAX_LENGTH_89:I = 0x4

.field private static final RADIX_HEX:I = 0x10

.field private static final TAB_INFO:I = 0x2

.field private static final TAB_REG:I = 0x1

.field private static final UPDATE_INTERVAL:I = 0x5dc

.field private static final WAIT_INTERVAL:I = 0x1f4


# instance fields
.field private mBankAdatper:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBankIndex:I

.field private mBankSpinner:Landroid/widget/Spinner;

.field private mBankType:[Ljava/lang/String;

.field private mBtnGetReg6333:Landroid/widget/Button;

.field private mBtnGetRegister:Landroid/widget/Button;

.field private mBtnSetReg6333:Landroid/widget/Button;

.field private mBtnSetRegister:Landroid/widget/Button;

.field private mEditAddr:Landroid/widget/EditText;

.field private mEditAddr6333:Landroid/widget/EditText;

.field private mEditVal:Landroid/widget/EditText;

.field private mEditVal6333:Landroid/widget/EditText;

.field private mFiles:[[Ljava/lang/String;

.field private mFilesFor7282:[[Ljava/lang/String;

.field private mFilesFor89:[[Ljava/lang/String;

.field private mInfo:Landroid/widget/TextView;

.field private mPromptSw:Ljava/lang/String;

.field private mPromptUnit:Ljava/lang/String;

.field private mRun:Z

.field public mUpdateHandler:Landroid/os/Handler;

.field private mWhichTab:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mInfo:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetRegister:Landroid/widget/Button;

    .line 72
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetRegister:Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr:Landroid/widget/EditText;

    .line 74
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal:Landroid/widget/EditText;

    .line 76
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetReg6333:Landroid/widget/Button;

    .line 77
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetReg6333:Landroid/widget/Button;

    .line 78
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr6333:Landroid/widget/EditText;

    .line 79
    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal6333:Landroid/widget/EditText;

    .line 82
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Bank0"

    aput-object v1, v0, v4

    const-string v1, "Bank1"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankType:[Ljava/lang/String;

    .line 83
    iput v4, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankIndex:I

    .line 87
    iput v5, p0, Lcom/mediatek/engineermode/power/PMU6575;->mWhichTab:I

    .line 356
    new-instance v0, Lcom/mediatek/engineermode/power/PMU6575$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/power/PMU6575$3;-><init>(Lcom/mediatek/engineermode/power/PMU6575;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mUpdateHandler:Landroid/os/Handler;

    .line 370
    const-string v0, "0/1=off/on"

    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    .line 371
    const-string v0, "mV"

    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    .line 372
    const/16 v0, 0x37

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VAPROC_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VCORE_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VIO18_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VPA_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VRF18_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA1_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAM_AF_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAM_IO_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMA_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMD_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIBR_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIO28_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VM12_1_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VM12_2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VM12_INT_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMC_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMCH_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRF_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRTC_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VTCXO_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VUSB_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VAPROC_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VCORE_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VIO18_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VPA_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VRF18_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA1_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAM_AF_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAM_IO_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMA_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMD_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIBR_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIO28_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VM12_1_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VM12_2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VM12_INT_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMC_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMCH_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRF_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRTC_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VTCXO_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VUSB_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mFiles:[[Ljava/lang/String;

    .line 393
    const/16 v0, 0x43

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VPROC_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VSRAM_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VCORE_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VM_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VIO18_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VPA_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VRF18_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VRF18_2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIO28_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VUSB_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMC1_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMCH1_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VEMC_3V3_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VEMC_1V8_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP1_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP3_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP4_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP5_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP6_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM1_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIBR_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRTC_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VAST_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRF28_STATUS "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRF28_2_STATUS "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VTCXO_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VTCXO_2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA28_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMA_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VPROC_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VSRAM_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VCORE_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VM_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VIO18_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VPA_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VRF18_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VRF18_2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIO28_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VUSB_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMC1_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMCH1_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VEMC_3V3_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VEMC_1V8_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP1_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP3_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP4_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP5_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP6_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM1_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIBR_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRTC_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VAST_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRF28_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRF28_2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VTCXO_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VTCXO_2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA28_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMA_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mFilesFor89:[[Ljava/lang/String;

    .line 463
    const/16 v0, 0x2f

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VPROC_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VSYS_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BUCK_VPA_STATUS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SEP"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VTCXO_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VA_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMA_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCN28_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCN33_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIO28_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VUSB_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMC_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMCH_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VEMC_3V3_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP1_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP3_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCN_1V8_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM1_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM2_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRTC_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAM_AF_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIBR_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VM_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VRF18_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIO18_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMD_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAM_IO_STATUS"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptSw:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VPROC_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VSYS_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "BUCK_VPA_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SEP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMC_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VMCH_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VEMC_3V3_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP1_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VGP3_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM1_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VSIM2_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAM_AF_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VIBR_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VM_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMD_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCAMA_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LDO_VCN33_VOLTAGE"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mPromptUnit:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mFilesFor7282:[[Ljava/lang/String;

    .line 513
    iput-boolean v4, p0, Lcom/mediatek/engineermode/power/PMU6575;->mRun:Z

    .line 515
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/power/PMU6575;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/power/PMU6575;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/engineermode/power/PMU6575;->onTabInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/power/PMU6575;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/engineermode/power/PMU6575;->onTabReg()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/power/PMU6575;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/power/PMU6575;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mRun:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/power/PMU6575;)[[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mFilesFor89:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/power/PMU6575;)[[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mFilesFor7282:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/power/PMU6575;)[[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mFiles:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/power/PMU6575;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/power/PMU6575;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mWhichTab:I

    return v0
.end method

.method private checkAddr(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_1

    :cond_0
    move v2, v3

    .line 303
    :goto_0
    return v2

    .line 297
    :cond_1
    move-object v1, p1

    .line 299
    .local v1, temp:Ljava/lang/String;
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 301
    goto :goto_0
.end method

.method private checkVal(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/16 v5, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 308
    :cond_0
    if-eqz p1, :cond_1

    .line 309
    const-string v3, "EM-PMU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s.length() is wrong!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_1
    :goto_0
    return v2

    .line 313
    :cond_2
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v4

    if-gt v5, v4, :cond_3

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_4

    .line 315
    const-string v3, "EM-PMU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s.length() is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_4

    .line 320
    const-string v3, "EM-PMU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s.length() is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_4
    move-object v1, p1

    .line 326
    .local v1, temp:Ljava/lang/String;
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 330
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 336
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

    .line 340
    .local v0, cmdx:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I

    move-result v3

    .line 341
    .local v3, ret:I
    if-nez v3, :cond_0

    .line 342
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v2

    .line 352
    .end local v0           #cmdx:[Ljava/lang/String;
    .end local v3           #ret:I
    :goto_0
    return-object v2

    .line 345
    .restart local v0       #cmdx:[Ljava/lang/String;
    .restart local v3       #ret:I
    :cond_0
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 348
    .end local v0           #cmdx:[Ljava/lang/String;
    .end local v3           #ret:I
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Ljava/io/IOException;
    const-string v4, "EM-PMU"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "ERR.JE"

    goto :goto_0
.end method

.method private handleGetClick(Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 7
    .parameter "addr"
    .parameter "cmds"
    .parameter "toSetTxt"

    .prologue
    const/4 v6, 0x1

    .line 200
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    aget-object v3, p2, v6

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, out:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, text:Ljava/lang/String;
    const-string v3, "EM-PMU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "out :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "EM-PMU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "text :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v2           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please check return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleSetClick(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "addr"
    .parameter "val"
    .parameter "cmds"

    .prologue
    .line 215
    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, out:Ljava/lang/String;
    const-string v1, "EM-PMU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "out :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 220
    :cond_0
    return-void
.end method

.method private onTabInfo()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mWhichTab:I

    .line 197
    return-void
.end method

.method private onTabReg()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mWhichTab:I

    .line 193
    return-void
.end method

.method private setLayout()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    const v2, 0x7f0b0394

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mInfo:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0b039b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetRegister:Landroid/widget/Button;

    .line 105
    const v2, 0x7f0b039c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetRegister:Landroid/widget/Button;

    .line 106
    const v2, 0x7f0b0399

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr:Landroid/widget/EditText;

    .line 107
    const v2, 0x7f0b039a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal:Landroid/widget/EditText;

    .line 108
    const v2, 0x7f0b0396

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankSpinner:Landroid/widget/Spinner;

    .line 110
    const v2, 0x7f0b03a0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetReg6333:Landroid/widget/Button;

    .line 111
    const v2, 0x7f0b03a1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetReg6333:Landroid/widget/Button;

    .line 112
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetReg6333:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetReg6333:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v2, 0x7f0b039e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr6333:Landroid/widget/EditText;

    .line 115
    const v2, 0x7f0b039f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal6333:Landroid/widget/EditText;

    .line 117
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mInfo:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetRegister:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetRegister:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_1

    .line 119
    :cond_0
    const-string v2, "PMU"

    const-string v3, "clocwork worked..."

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetRegister:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetRegister:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankAdatper:Landroid/widget/ArrayAdapter;

    .line 127
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankAdatper:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankAdatper:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankType:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankAdatper:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 132
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/mediatek/engineermode/power/PMU6575$1;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/power/PMU6575$1;-><init>(Lcom/mediatek/engineermode/power/PMU6575;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 142
    const/16 v2, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 143
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    const v2, 0x7f0b0397

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 145
    .local v1, updateView:Landroid/widget/TextView;
    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    const v2, 0x7f0b0398

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #updateView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 147
    .restart local v1       #updateView:Landroid/widget/TextView;
    const v2, 0x7f0800ba

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr:Landroid/widget/EditText;

    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 151
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal:Landroid/widget/EditText;

    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 156
    .end local v1           #updateView:Landroid/widget/TextView;
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/platform/mt6333-user/mt6333_access"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 157
    const v2, 0x7f0b039d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "arg0"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 224
    const/4 v5, 0x0

    .line 225
    .local v5, regFile:Ljava/lang/String;
    const/16 v8, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 226
    const-string v5, "/sys/devices/platform/mt-pmic/pmic_access"

    .line 238
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetRegister:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 239
    iget-object v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, addr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/power/PMU6575;->checkAddr(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "echo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, cmd:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, out:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, text:Ljava/lang/String;
    const-string v8, "EM-PMU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "out :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v8, "EM-PMU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "text :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/String;
    .end local v4           #out:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 228
    :cond_1
    iget v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankIndex:I

    if-nez v8, :cond_2

    .line 229
    const-string v5, "/sys/devices/platform/mt-pmic/pmic_access_bank0"

    goto/16 :goto_0

    .line 230
    :cond_2
    iget v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBankIndex:I

    if-ne v8, v11, :cond_3

    .line 231
    const-string v5, "/sys/devices/platform/mt-pmic/pmic_access_bank1"

    goto/16 :goto_0

    .line 233
    :cond_3
    const-string v8, "Internal error. bankX too large."

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 250
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    .restart local v4       #out:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 251
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Please check return value :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 255
    .end local v1           #cmd:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v4           #out:Ljava/lang/String;
    :cond_4
    const-string v8, "Please check address."

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 257
    .end local v0           #addr:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetRegister:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 258
    iget-object v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0       #addr:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, val:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/power/PMU6575;->checkAddr(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/power/PMU6575;->checkVal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "echo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .restart local v1       #cmd:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .restart local v4       #out:Ljava/lang/String;
    const-string v8, "EM-PMU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "val:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "out :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    invoke-static {p0, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 268
    .end local v1           #cmd:Ljava/lang/String;
    .end local v4           #out:Ljava/lang/String;
    :cond_6
    const-string v8, "Please check address or value."

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 270
    .end local v0           #addr:Ljava/lang/String;
    .end local v7           #val:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnGetReg6333:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 271
    iget-object v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr6333:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .restart local v0       #addr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/power/PMU6575;->checkAddr(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 273
    new-array v2, v12, [Ljava/lang/String;

    .line 274
    .local v2, cmds:[Ljava/lang/String;
    const-string v8, "echo %1$s > /sys/devices/platform/mt6333-user/mt6333_access"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v10

    .line 275
    const-string v8, "cat /sys/devices/platform/mt6333-user/mt6333_access"

    aput-object v8, v2, v11

    .line 276
    iget-object v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal6333:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2, v8}, Lcom/mediatek/engineermode/power/PMU6575;->handleGetClick(Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V

    goto/16 :goto_1

    .line 278
    .end local v2           #cmds:[Ljava/lang/String;
    :cond_8
    const-string v8, "Please check address."

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 280
    .end local v0           #addr:Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575;->mBtnSetReg6333:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 281
    iget-object v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditAddr6333:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .restart local v0       #addr:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/engineermode/power/PMU6575;->mEditVal6333:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 283
    .restart local v7       #val:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/power/PMU6575;->checkAddr(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/power/PMU6575;->checkVal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 284
    new-array v2, v11, [Ljava/lang/String;

    const-string v8, "echo %1$s %2$s > /sys/devices/platform/mt6333-user/mt6333_access"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v10

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v10

    .line 285
    .restart local v2       #cmds:[Ljava/lang/String;
    invoke-direct {p0, v0, v7, v2}, Lcom/mediatek/engineermode/power/PMU6575;->handleSetClick(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    .end local v2           #cmds:[Ljava/lang/String;
    :cond_a
    const-string v8, "Please check address or value."

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0800bc

    const v5, 0x7f0800bb

    .line 163
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 166
    .local v0, tabHost:Landroid/widget/TabHost;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030070

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 169
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0392

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 173
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0395

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 176
    invoke-direct {p0}, Lcom/mediatek/engineermode/power/PMU6575;->setLayout()V

    .line 177
    new-instance v1, Lcom/mediatek/engineermode/power/PMU6575$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/power/PMU6575$2;-><init>(Lcom/mediatek/engineermode/power/PMU6575;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 189
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 571
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mRun:Z

    .line 573
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/power/PMU6575;->mRun:Z

    .line 579
    new-instance v0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/power/PMU6575$RunThread;-><init>(Lcom/mediatek/engineermode/power/PMU6575;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 580
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 584
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 585
    return-void
.end method

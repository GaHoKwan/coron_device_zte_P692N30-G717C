.class public Lcom/mediatek/engineermode/audio/AudioModeSetting;
.super Landroid/app/Activity;
.source "AudioModeSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;
    }
.end annotation


# static fields
.field private static final AUDIO_COMMAND_PARAM0:I = 0x20

.field private static final AUDIO_COMMAND_PARAM1:I = 0x21

.field private static final AUDIO_COMMAND_PARAM2:I = 0x22

.field private static final CONSTANT_0XFF:I = 0xff

.field private static final CONSTANT_256:I = 0x100

.field private static final DIALOG_ID_GET_DATA_ERROR:I = 0x1

.field private static final DIALOG_ID_SET_ERROR:I = 0x3

.field private static final DIALOG_ID_SET_SUCCESS:I = 0x2

.field private static final GET_CUSTOMD_DATASIZE:I = 0x5

.field private static final MAX_VOL_SIZE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "EM/Audio_modesetting"

.field private static final TYPE_MAX_EXTAMP:I = 0x6

.field private static final TYPE_MAX_HEADSET:I = 0x6

.field private static final TYPE_MAX_HEADSPEAKER:I = 0x8

.field private static final TYPE_MAX_NORMAL:I = 0x6

.field private static final TYPE_MAX_SPEAKER:I = 0x6

.field private static final VALUE_RANGE_160:I = 0xa0

.field private static final VALUE_RANGE_255:I = 0xff

.field private static sGetCustomerData:I

.field private static sMaxVolLevel:I

.field private static sMaxVolMode:I

.field private static sMaxVolType:I

.field private static sModeMicIndex:I

.field private static sModeSidIndex:I

.field private static sModeSph2Index:I

.field private static sModeSphIndex:I

.field private static sOffSet:[I

.field private static sSetCustomerData:I

.field private static sStructSize:I

.field private static sTypeMedia:I


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mBtnSetMaxVol:Landroid/widget/Button;

.field private mBtnSetMaxVolSpeaker:Landroid/widget/Button;

.field private mCurrentMode:I

.field private mData:[B

.field private mEditMaxVol:Landroid/widget/EditText;

.field private mEditMaxVolSpeaker:Landroid/widget/EditText;

.field private mFirSpinner:Landroid/widget/Spinner;

.field private mFirsummary:Landroid/widget/TextView;

.field private mIsFirstFirSet:Z

.field private mLevelIndex:I

.field private mRealUsageVols:[I

.field private mSupportEnhance:Z

.field private mTypeIndex:I

.field private mValText:Landroid/widget/TextView;

.field private mValueEdit:Landroid/widget/EditText;

.field private mValueRange:I

.field private mVolLevelSpinner:Landroid/widget/Spinner;

.field private mVolTypeSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 74
    sput v8, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    .line 76
    sput v6, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    .line 78
    const/16 v0, 0x8

    sput v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    .line 81
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    aput v1, v0, v7

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v8

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    aput v1, v0, v4

    const/4 v1, 0x5

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x5

    aput v2, v0, v1

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x6

    aput v1, v0, v5

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x7

    aput v1, v0, v6

    sput-object v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sOffSet:[I

    .line 87
    sput v5, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    .line 95
    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v0, v1

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    mul-int/2addr v0, v1

    sput v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    .line 99
    sput v5, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sSetCustomerData:I

    .line 101
    sput v6, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sGetCustomerData:I

    .line 110
    sput v7, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeMicIndex:I

    .line 111
    sput v4, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSphIndex:I

    .line 112
    sput v4, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSph2Index:I

    .line 113
    const/4 v0, 0x5

    sput v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSidIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueRange:I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mIsFirstFirSet:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/audio/AudioModeSetting;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSph2Index:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSidIndex:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeMicIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVol:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVolSpeaker:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVolSpeaker:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/audio/AudioModeSetting;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getVolLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mVolLevelSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mIsFirstFirSet:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/mediatek/engineermode/audio/AudioModeSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mIsFirstFirSet:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mFirsummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/audio/AudioModeSetting;[BIII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setMaxVolEdit()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueRange:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSphIndex:I

    return v0
.end method

.method private checkEditNumber(Landroid/widget/EditText;I)Z
    .locals 7
    .parameter "edit"
    .parameter "maxValue"

    .prologue
    const v6, 0x7f08019d

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 560
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, editStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 562
    :cond_0
    const v4, 0x7f08019e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 577
    :goto_0
    return v2

    .line 567
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, p2, :cond_2

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f08019d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    move v2, v3

    .line 577
    goto :goto_0
.end method

.method private getMaxValue([BIZ)I
    .locals 2
    .parameter "dataPara"
    .parameter "mode"
    .parameter "dual"

    .prologue
    .line 521
    if-eqz p1, :cond_0

    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    if-lt p2, v0, :cond_1

    .line 522
    :cond_0
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "assert! Check the setting value."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 525
    sget-object v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sOffSet:[I

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    aget v0, v0, v1

    mul-int/lit8 v1, p2, 0x6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 528
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sOffSet:[I

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    aget v0, v0, v1

    mul-int/lit8 v1, p2, 0x6

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method private getUsageVol(Ljava/lang/String;)I
    .locals 2
    .parameter "volTypeStr"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    array-length v0, v0

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    if-eq v0, v1, :cond_1

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid mRealUsageVols"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    const v0, 0x7f0801b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 444
    :goto_0
    return v0

    .line 427
    :cond_2
    const v0, 0x7f0801b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    .line 429
    :cond_3
    const v0, 0x7f0801b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    .line 431
    :cond_4
    const v0, 0x7f0801b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 432
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0

    .line 433
    :cond_5
    const v0, 0x7f0801b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    goto :goto_0

    .line 435
    :cond_6
    const v0, 0x7f0801b7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 436
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    goto :goto_0

    .line 437
    :cond_7
    const v0, 0x7f0801b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 438
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    goto :goto_0

    .line 439
    :cond_8
    const v0, 0x7f0801b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 440
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto/16 :goto_0

    .line 441
    :cond_9
    const v0, 0x7f0801ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 442
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    goto/16 :goto_0

    .line 444
    :cond_a
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private getValue([BIII)I
    .locals 2
    .parameter "dataPara"
    .parameter "mode"
    .parameter "type"
    .parameter "level"

    .prologue
    .line 469
    if-eqz p1, :cond_0

    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    if-ge p2, v0, :cond_0

    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    if-ge p3, v0, :cond_0

    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    if-lt p4, v0, :cond_1

    .line 471
    :cond_0
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "assert! Check the setting value."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p4

    sget-object v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sOffSet:[I

    aget v1, v1, p3

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getVolLevelList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "volTypeStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "Level "

    .line 450
    .local v2, prefix:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getUsageVol(Ljava/lang/String;)I

    move-result v3

    .line 452
    .local v3, usageVol:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    return-object v1
.end method

.method private setAudioData()V
    .locals 4

    .prologue
    .line 548
    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sSetCustomerData:I

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setAudioData(II[B)I

    move-result v0

    .line 550
    .local v0, result:I
    if-nez v0, :cond_0

    .line 551
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 557
    :goto_0
    return-void

    .line 553
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 554
    const-string v1, "EM/Audio_modesetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioModeSetting SetAudioData return value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMaxValue([BIBZ)V
    .locals 2
    .parameter "dataPara"
    .parameter "mode"
    .parameter "val"
    .parameter "dual"

    .prologue
    .line 510
    if-eqz p1, :cond_0

    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    if-lt p2, v0, :cond_1

    .line 511
    :cond_0
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "assert! Check the setting value."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1
    if-eqz p4, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 514
    sget-object v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sOffSet:[I

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    aget v0, v0, v1

    mul-int/lit8 v1, p2, 0x6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    aput-byte p3, p1, v0

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_2
    sget-object v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sOffSet:[I

    sget v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    aget v0, v0, v1

    mul-int/lit8 v1, p2, 0x6

    add-int/2addr v0, v1

    aput-byte p3, p1, v0

    goto :goto_0
.end method

.method private setMaxVolData(B)V
    .locals 6
    .parameter "val"

    .prologue
    const/4 v2, 0x0

    .line 534
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    if-nez v0, :cond_1

    .line 535
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v4, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSphIndex:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setValue([BIIIB)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v4, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSidIndex:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setValue([BIIIB)V

    goto :goto_0

    .line 538
    :cond_2
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v4, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setValue([BIIIB)V

    goto :goto_0
.end method

.method private setMaxVolData(BZ)V
    .locals 2
    .parameter "val"
    .parameter "dual"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    iget v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setMaxValue([BIBZ)V

    .line 545
    return-void
.end method

.method private setMaxVolEdit()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 478
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "Set max vol Edit."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-boolean v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    iget v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    invoke-direct {p0, v1, v2, v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getMaxValue([BIZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVolSpeaker:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    iget v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getMaxValue([BIZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSphIndex:I

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    const-string v0, "EM/Audio_modesetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v4, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSphIndex:I

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :cond_2
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    if-ne v0, v3, :cond_3

    .line 493
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSidIndex:I

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    const-string v0, "EM/Audio_modesetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v4, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSidIndex:I

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :cond_3
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 498
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v2, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    const-string v0, "EM/Audio_modesetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    sget v3, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    sget v4, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "error is 0"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setValue([BIIIB)V
    .locals 3
    .parameter "dataPara"
    .parameter "mode"
    .parameter "type"
    .parameter "level"
    .parameter "val"

    .prologue
    .line 460
    if-eqz p1, :cond_0

    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    if-ge p2, v0, :cond_0

    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    if-ge p3, v0, :cond_0

    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    if-lt p4, v0, :cond_1

    .line 462
    :cond_0
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "assert! Check the setting value."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    const-string v0, "EM/Audio_modesetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue() mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p4

    sget-object v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sOffSet:[I

    aget v1, v1, p3

    add-int/2addr v0, v1

    aput-byte p5, p1, v0

    .line 466
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/16 v2, 0xa0

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 590
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueEdit:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueRange:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->checkEditNumber(Landroid/widget/EditText;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 594
    .local v7, editString:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 595
    .local v6, editInteger:I
    int-to-byte v5, v6

    .line 596
    .local v5, editByte:B
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    iget v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    iget v3, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setValue([BIIIB)V

    .line 597
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setAudioData()V

    goto :goto_0

    .line 598
    .end local v5           #editByte:B
    .end local v6           #editInteger:I
    .end local v7           #editString:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVol:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 599
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->checkEditNumber(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 603
    .restart local v7       #editString:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 604
    .restart local v6       #editInteger:I
    int-to-byte v5, v6

    .line 605
    .restart local v5       #editByte:B
    iget-boolean v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    if-eqz v0, :cond_3

    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, v5, v0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setMaxVolData(BZ)V

    .line 610
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setAudioData()V

    goto :goto_0

    .line 608
    :cond_3
    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setMaxVolData(B)V

    goto :goto_1

    .line 611
    .end local v5           #editByte:B
    .end local v6           #editInteger:I
    .end local v7           #editString:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVolSpeaker:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVolSpeaker:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->checkEditNumber(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVolSpeaker:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 616
    .restart local v7       #editString:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 617
    .restart local v6       #editInteger:I
    int-to-byte v5, v6

    .line 618
    .restart local v5       #editByte:B
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setMaxVolData(BZ)V

    .line 619
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setAudioData()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 176
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 178
    .local v13, resources:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 179
    .local v9, intent:Landroid/content/Intent;
    const-string v18, "CurrentMode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    .line 180
    const-string v18, "is_enhance"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    .line 181
    const-string v18, "EM/Audio_modesetting"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mCurrentMode: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "mSupportEnhance: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 184
    const v18, 0x7f030005

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 185
    const/16 v18, 0x4

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    .line 186
    const/16 v18, 0xf

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    .line 187
    const/16 v18, 0x9

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    .line 188
    const/16 v18, 0x7

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sTypeMedia:I

    .line 189
    sget v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v19, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v18, v18, v19

    sget v19, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    mul-int v18, v18, v19

    add-int/lit8 v18, v18, 0x6

    add-int/lit8 v18, v18, 0x6

    add-int/lit8 v18, v18, 0x6

    add-int/lit8 v18, v18, 0x8

    add-int/lit8 v18, v18, 0x6

    sget v19, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    add-int v18, v18, v19

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    .line 192
    const/16 v18, 0x101

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sSetCustomerData:I

    .line 193
    const/16 v18, 0x100

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sGetCustomerData:I

    .line 194
    const/16 v18, 0x5

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSph2Index:I

    .line 195
    const/16 v18, 0x6

    sput v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sModeSidIndex:I

    .line 196
    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x1

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    const/16 v19, 0x2

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x2

    aput v20, v18, v19

    const/16 v19, 0x3

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x3

    aput v20, v18, v19

    const/16 v19, 0x4

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x4

    aput v20, v18, v19

    const/16 v19, 0x5

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x5

    aput v20, v18, v19

    const/16 v19, 0x6

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x6

    aput v20, v18, v19

    const/16 v19, 0x7

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x7

    aput v20, v18, v19

    const/16 v19, 0x8

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x8

    aput v20, v18, v19

    const/16 v19, 0x9

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolMode:I

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolLevel:I

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x9

    aput v20, v18, v19

    sput-object v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sOffSet:[I

    .line 218
    :cond_0
    sget v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Ljava/util/Arrays;->fill([BIIB)V

    .line 221
    sget v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sGetCustomerData:I

    sget v19, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/media/AudioSystem;->getAudioData(II[B)I

    move-result v14

    .line 223
    .local v14, ret:I
    if-eqz v14, :cond_1

    .line 224
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 225
    const-string v18, "EM/Audio_modesetting"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AudioModeSetting GetAudioData return value is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 230
    sget v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    .line 231
    const-string v7, "["

    .line 232
    .local v7, debugStr:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mRealUsageVols:[I

    move-object/from16 v18, v0

    sget v19, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sMaxVolType:I

    sub-int v19, v19, v8

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    move-object/from16 v20, v0

    sget v21, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    sub-int v21, v21, v8

    add-int/lit8 v21, v21, -0x1

    aget-byte v20, v20, v21

    aput v20, v18, v19

    .line 234
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    move-object/from16 v19, v0

    sget v20, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    sub-int v20, v20, v8

    add-int/lit8 v20, v20, -0x1

    aget-byte v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 207
    .end local v7           #debugStr:Ljava/lang/String;
    .end local v8           #i:I
    .end local v14           #ret:I
    :cond_2
    const v18, 0x7f030004

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 208
    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v6

    .line 209
    .local v6, dataSize:I
    sget v18, Lcom/mediatek/engineermode/audio/AudioModeSetting;->sStructSize:I

    move/from16 v0, v18

    if-eq v6, v0, :cond_0

    .line 210
    const-string v18, "EM/Audio_modesetting"

    const-string v19, "assert! Check the structure size!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v18, "Error: the structure size is error"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 418
    .end local v6           #dataSize:I
    :goto_1
    return-void

    .line 236
    .restart local v7       #debugStr:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v14       #ret:I
    :cond_3
    const-string v18, "EM/Audio_modesetting"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mRealUsageVols: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v7           #debugStr:Ljava/lang/String;
    .end local v8           #i:I
    :cond_4
    const v18, 0x7f0b001a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSet:Landroid/widget/Button;

    .line 239
    const v18, 0x7f0b0019

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueEdit:Landroid/widget/EditText;

    .line 240
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 241
    const v18, 0x7f0b001f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVol:Landroid/widget/Button;

    .line 242
    const v18, 0x7f0b001e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    .line 243
    const v18, 0x7f0b0022

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVolSpeaker:Landroid/widget/Button;

    .line 244
    const v18, 0x7f0b0021

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVolSpeaker:Landroid/widget/EditText;

    .line 249
    :goto_2
    const v18, 0x7f0b0016

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mVolTypeSpinner:Landroid/widget/Spinner;

    .line 250
    const v18, 0x7f0b0017

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mVolLevelSpinner:Landroid/widget/Spinner;

    .line 251
    const v18, 0x7f0b0018

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValText:Landroid/widget/TextView;

    .line 252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 254
    const v18, 0x7f0b001d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 255
    .local v15, tvView:Landroid/widget/TextView;
    const v18, 0x7f08017b

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 256
    const v18, 0x7f0b0020

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 257
    .local v16, v:Landroid/view/View;
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .end local v15           #tvView:Landroid/widget/TextView;
    .end local v16           #v:Landroid/view/View;
    :cond_5
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v5, adapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const v18, 0x7f06002c

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 280
    :goto_5
    new-instance v12, Landroid/widget/ArrayAdapter;

    const v18, 0x1090008

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v12, v0, v1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 282
    .local v12, mTypeAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mVolTypeSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mVolTypeSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    new-instance v19, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;-><init>(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 350
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 351
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getVolLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 356
    .local v17, volLevelList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    new-instance v11, Landroid/widget/ArrayAdapter;

    const v18, 0x1090008

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v11, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 358
    .local v11, mLevelAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mVolLevelSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mVolLevelSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    new-instance v19, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;-><init>(Lcom/mediatek/engineermode/audio/AudioModeSetting;Lcom/mediatek/engineermode/audio/AudioModeSetting$1;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSet:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVol:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVolSpeaker:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->setMaxVolEdit()V

    goto/16 :goto_1

    .line 246
    .end local v5           #adapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #mLevelAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v12           #mTypeAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v17           #volLevelList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const v18, 0x7f0b001c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVol:Landroid/widget/Button;

    .line 247
    const v18, 0x7f0b001b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;

    goto/16 :goto_2

    .line 260
    :cond_7
    const v18, 0x7f0b0015

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mFirSpinner:Landroid/widget/Spinner;

    .line 261
    const v18, 0x7f0b0014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mFirsummary:Landroid/widget/TextView;

    goto/16 :goto_3

    .line 265
    .restart local v5       #adapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    const v18, 0x7f060029

    goto/16 :goto_4

    .line 268
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 269
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const v18, 0x7f06002d

    :goto_8
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_a
    const v18, 0x7f06002a

    goto :goto_8

    .line 272
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const v18, 0x7f06002e

    :goto_9
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_c
    const v18, 0x7f06002b

    goto :goto_9

    .line 277
    :cond_d
    const v18, 0x7f06002f

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 353
    .restart local v12       #mTypeAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_e
    const v18, 0x7f060030

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .restart local v17       #volLevelList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_6

    .line 368
    .restart local v11       #mLevelAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_f
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v18, 0x1090008

    const v19, 0x7f060031

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 371
    .local v10, mFirAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mFirSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/audio/AudioModeSetting;->mFirSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    new-instance v19, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;-><init>(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const v3, 0x104000a

    const/4 v0, 0x0

    .line 625
    packed-switch p1, :pswitch_data_0

    .line 651
    :goto_0
    return-object v0

    .line 627
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080195

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080196

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/audio/AudioModeSetting$3;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/audio/AudioModeSetting$3;-><init>(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 641
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080199

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08019a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 646
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08019b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08019c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

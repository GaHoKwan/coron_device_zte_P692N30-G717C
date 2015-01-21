.class public Lcom/zte/heartyservice/net/NetIdleHoursSetting;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "NetIdleHoursSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;,
        Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;,
        Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;
    }
.end annotation


# instance fields
.field private endHour:I

.field private endMinute:I

.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mAllSimReady:Z

.field private mCloseData:Landroid/widget/RadioButton;

.field private mCurrentSim:I

.field private mEndTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

.field private mEndTimeBtn:Landroid/widget/Button;

.field private mIdleDataMax:Landroid/view/View;

.field private mIdleHoursMaxSummary:Landroid/widget/TextView;

.field private mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field private mShowDialog:Landroid/widget/RadioButton;

.field private mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSimManager:Lcom/zte/heartyservice/msim/SimManager;

.field private mSimSwitch:Landroid/widget/RadioGroup;

.field private mStartTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

.field private mStartTimeBtn:Landroid/widget/Button;

.field private msimSwitchLayout:Landroid/view/View;

.field private startHour:I

.field private startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mAllSimReady:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    .line 67
    new-instance v0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$1;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 294
    return-void
.end method

.method private InitialValue()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    return p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->updateUI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endMinute:I

    return v0
.end method

.method static synthetic access$1002(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endMinute:I

    return p1
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTimeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mIdleHoursMaxSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTimeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    return v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    return p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startMinute:I

    return v0
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startMinute:I

    return p1
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    return v0
.end method

.method static synthetic access$902(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    return p1
.end method

.method private initMSimState()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 128
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    .line 129
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isAllSimReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mAllSimReady:Z

    .line 131
    iget-boolean v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mAllSimReady:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentSim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->getFirstReadyId()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDialog(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0e01bb

    if-ne v2, v3, :cond_0

    .line 319
    new-instance v1, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)V

    .line 353
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    const v3, 0x7f0a0107

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursMax(I)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/Dialog;

    .line 360
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    return-void
.end method

.method private updateOtherUI()V
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 216
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursMax(I)I

    move-result v0

    .line 217
    .local v0, idleHourslimit:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mIdleHoursMaxSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    const/16 v1, 0x400

    if-lt v0, v1, :cond_1

    rem-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mIdleHoursMaxSummary:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, v0, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mIdleHoursMaxSummary:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRadioButtonUI()V
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    if-gez v0, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimSwitch:Landroid/widget/RadioGroup;

    const v1, 0x7f0e01b7

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimSwitch:Landroid/widget/RadioGroup;

    const v1, 0x7f0e01b8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method private updateTimeButtonUI()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/16 v9, 0xc

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 163
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v7, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartHour(I)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    .line 164
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v7, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartMinute(I)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startMinute:I

    .line 165
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v7, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndHour(I)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    .line 166
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v7, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndMinute(I)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endMinute:I

    .line 168
    new-instance v6, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    iget v7, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    iget v8, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startMinute:I

    invoke-direct {v6, p0, v7, v8}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;II)V

    iput-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    .line 169
    new-instance v6, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    iget v7, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    iget v8, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endMinute:I

    invoke-direct {v6, p0, v7, v8}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;II)V

    iput-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    .line 170
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTimeBtn:Landroid/widget/Button;

    new-instance v7, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    invoke-direct {v7, p0, v8}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTimeBtn:Landroid/widget/Button;

    new-instance v7, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    invoke-direct {v7, p0, v8}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTimeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d0

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTimeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d0

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, am:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01d9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, pm:Ljava/lang/String;
    iget v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    if-le v6, v9, :cond_1

    move-object v1, v2

    .line 182
    .local v1, funit:Ljava/lang/String;
    :goto_1
    iget v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    if-le v6, v9, :cond_2

    move-object v5, v2

    .line 183
    .local v5, tunit:Ljava/lang/String;
    :goto_2
    iget v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    if-le v6, v9, :cond_3

    .line 184
    move-object v1, v2

    .line 185
    iget v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    add-int/lit8 v3, v6, -0xc

    .line 191
    .local v3, tempshour:I
    :goto_3
    iget v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    if-le v6, v9, :cond_4

    .line 192
    move-object v5, v2

    .line 193
    iget v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    add-int/lit8 v4, v6, -0xc

    .line 199
    .local v4, tempthour:I
    :goto_4
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTimeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d7

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aput-object v1, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v6, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTimeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d7

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aput-object v5, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #funit:Ljava/lang/String;
    .end local v3           #tempshour:I
    .end local v4           #tempthour:I
    .end local v5           #tunit:Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 179
    goto :goto_1

    .restart local v1       #funit:Ljava/lang/String;
    :cond_2
    move-object v5, v0

    .line 182
    goto :goto_2

    .line 187
    .restart local v5       #tunit:Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 188
    iget v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I

    .restart local v3       #tempshour:I
    goto :goto_3

    .line 195
    :cond_4
    move-object v5, v0

    .line 196
    iget v4, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I

    .restart local v4       #tempthour:I
    goto :goto_4
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->updateRadioButtonUI()V

    .line 230
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->updateTimeButtonUI()V

    .line 231
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->updateOtherUI()V

    .line 232
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I

    invoke-virtual {v0, v1, p2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursOpen(IZ)V

    .line 292
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01bb

    if-ne v0, v1, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->showDialog(Landroid/view/View;)V

    .line 315
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x10

    const/4 v4, -0x2

    .line 88
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e2

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, rightOfActionBar:Landroid/view/View;
    const v1, 0x7f0e032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 91
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    const v1, 0x7f0a0105

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 95
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->actionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 96
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->actionBar:Landroid/app/ActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 100
    const v1, 0x7f030086

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->setContentView(I)V

    .line 101
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 102
    const v1, 0x7f0e01b5

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->msimSwitchLayout:Landroid/view/View;

    .line 103
    const v1, 0x7f0e01b6

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimSwitch:Landroid/widget/RadioGroup;

    .line 104
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimSwitch:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 105
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->initMSimState()V

    .line 106
    const v1, 0x7f0e01b9

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTimeBtn:Landroid/widget/Button;

    .line 107
    const v1, 0x7f0e01ba

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTimeBtn:Landroid/widget/Button;

    .line 108
    const v1, 0x7f0e01bb

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mIdleDataMax:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mIdleDataMax:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0e01bc

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mIdleHoursMaxSummary:Landroid/widget/TextView;

    .line 119
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onStart()V

    .line 124
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->updateUI()V

    .line 125
    return-void
.end method

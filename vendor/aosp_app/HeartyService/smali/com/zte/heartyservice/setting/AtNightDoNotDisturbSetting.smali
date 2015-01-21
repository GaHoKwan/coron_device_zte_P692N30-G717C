.class public Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "AtNightDoNotDisturbSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;,
        Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;,
        Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;
    }
.end annotation


# static fields
.field private static mSpPowerManager:Landroid/content/SharedPreferences;


# instance fields
.field private bv:Landroid/view/View;

.field donotdisturbsetting:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private item0:Landroid/view/View;

.field private item1:Landroid/view/View;

.field listener:Landroid/view/View$OnClickListener;

.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mStartTimeButton:Landroid/widget/Button;

.field private radio0:Landroid/widget/RadioButton;

.field private radio1:Landroid/widget/RadioButton;

.field private sp:Landroid/content/SharedPreferences;

.field startHour:I

.field startMinute:I

.field private startTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

.field private start_white_list:Landroid/view/View;

.field toHour:I

.field toMinute:I

.field private toTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 132
    new-instance v0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$2;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->listener:Landroid/view/View$OnClickListener;

    .line 285
    return-void
.end method

.method private InitialValue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->sp:Landroid/content/SharedPreferences;

    const-string v1, "at_night_do_not_disturb_from_hour"

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    .line 164
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->sp:Landroid/content/SharedPreferences;

    const-string v1, "at_night_do_not_disturb_from_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startMinute:I

    .line 165
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->sp:Landroid/content/SharedPreferences;

    const-string v1, "at_night_do_not_disturb_to_hour"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    .line 166
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->sp:Landroid/content/SharedPreferences;

    const-string v1, "at_night_do_not_disturb_to_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toMinute:I

    .line 168
    new-instance v0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    iget v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    iget v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startMinute:I

    invoke-direct {v0, p0, v1, v2}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;II)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    .line 169
    new-instance v0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    iget v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    iget v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toMinute:I

    invoke-direct {v0, p0, v1, v2}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;II)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    .line 170
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mStartTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mEndTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mStartTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mEndTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->updateTimeButtonUI()V

    return-void
.end method

.method static synthetic access$800()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private updateTimeButtonUI()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/16 v8, 0xc

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 175
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    iget-object v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d0

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d0

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, am:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01d9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, pm:Ljava/lang/String;
    iget v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    if-le v6, v8, :cond_1

    move-object v1, v2

    .line 188
    .local v1, funit:Ljava/lang/String;
    :goto_1
    iget v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    if-le v6, v8, :cond_2

    move-object v5, v2

    .line 189
    .local v5, tunit:Ljava/lang/String;
    :goto_2
    iget v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    if-le v6, v8, :cond_3

    .line 191
    move-object v1, v2

    .line 192
    iget v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    add-int/lit8 v3, v6, -0xc

    .line 198
    .local v3, tempshour:I
    :goto_3
    iget v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    if-le v6, v8, :cond_4

    .line 200
    move-object v5, v2

    .line 201
    iget v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    add-int/lit8 v4, v6, -0xc

    .line 207
    .local v4, tempthour:I
    :goto_4
    iget-object v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d7

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aput-object v1, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v6, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d7

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toMinute:I

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

    .line 184
    goto :goto_1

    .restart local v1       #funit:Ljava/lang/String;
    :cond_2
    move-object v5, v0

    .line 188
    goto :goto_2

    .line 195
    .restart local v5       #tunit:Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 196
    iget v3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    .restart local v3       #tempshour:I
    goto :goto_3

    .line 204
    :cond_4
    move-object v5, v0

    .line 205
    iget v4, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    .restart local v4       #tempthour:I
    goto :goto_4
.end method


# virtual methods
.method protected doWhenChooseRadioButton(I)V
    .locals 6
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 144
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    iput p1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->donotdisturbsetting:I

    .line 154
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "donotdisturbsetting"

    iget v3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->donotdisturbsetting:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    sget-object v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb_switch"

    sget-boolean v3, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 156
    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDonotDisturbStart(Z)V

    .line 157
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfDoNotDisturb()V

    .line 160
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    return-void

    .line 147
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 329
    sget-object v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb_switch"

    sget-boolean v3, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq p2, v1, :cond_0

    .line 332
    sget-object v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "do_not_disturb_switch"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    if-eqz p2, :cond_1

    .line 337
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfDoNotDisturb()V

    .line 342
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    :goto_0
    return-void

    .line 339
    .restart local v0       #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutDoNotDisturb()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "arg0"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x2

    const/4 v4, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v1, "powermanager"

    invoke-virtual {p0, v1, v7}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    .line 71
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, rightOfActionBar:Landroid/view/View;
    const v1, 0x7f0e032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 75
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    const v1, 0x7f0a03d3

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 81
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 82
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->actionBar:Landroid/app/ActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 86
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->setContentView(I)V

    .line 87
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    sget-object v2, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v3, "do_not_disturb_switch"

    sget-boolean v4, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 91
    const-string v1, "powermanager"

    invoke-virtual {p0, v1, v7}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->sp:Landroid/content/SharedPreferences;

    .line 92
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->editor:Landroid/content/SharedPreferences$Editor;

    .line 94
    const v1, 0x7f0e0050

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mStartTimeButton:Landroid/widget/Button;

    .line 95
    const v1, 0x7f0e0051

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mEndTimeButton:Landroid/widget/Button;

    .line 96
    const v1, 0x7f0e0052

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->start_white_list:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->start_white_list:Landroid/view/View;

    new-instance v2, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$1;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$1;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0e0053

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->item0:Landroid/view/View;

    .line 108
    const v1, 0x7f0e0055

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->item1:Landroid/view/View;

    .line 109
    const v1, 0x7f0e0054

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio0:Landroid/widget/RadioButton;

    .line 110
    const v1, 0x7f0e0056

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio1:Landroid/widget/RadioButton;

    .line 111
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->item0:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->item1:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio0:Landroid/widget/RadioButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio1:Landroid/widget/RadioButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->item0:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->item1:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio0:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->sp:Landroid/content/SharedPreferences;

    const-string v2, "donotdisturbsetting"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->donotdisturbsetting:I

    .line 120
    iget v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->donotdisturbsetting:I

    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->InitialValue()V

    .line 130
    return-void

    .line 122
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onStart()V

    .line 323
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->updateTimeButtonUI()V

    .line 324
    return-void
.end method

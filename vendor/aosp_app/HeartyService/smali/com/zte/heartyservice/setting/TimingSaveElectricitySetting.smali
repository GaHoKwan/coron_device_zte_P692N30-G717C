.class public Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "TimingSaveElectricitySetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;,
        Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;,
        Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;
    }
.end annotation


# static fields
.field private static final MENU_CANCEL:I = 0x2

.field private static final MENU_SAVE:I = 0x1

.field private static mSpPowerManager:Landroid/content/SharedPreferences;


# instance fields
.field private bv:Landroid/view/View;

.field choosemode:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private item0:Landroid/view/View;

.field private item1:Landroid/view/View;

.field private item2:Landroid/view/View;

.field private item3:Landroid/view/View;

.field listener:Landroid/view/View$OnClickListener;

.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mStartTimeButton:Landroid/widget/Button;

.field private radio0:Landroid/widget/RadioButton;

.field private radio1:Landroid/widget/RadioButton;

.field private radio2:Landroid/widget/RadioButton;

.field private radio3:Landroid/widget/RadioButton;

.field private sp:Landroid/content/SharedPreferences;

.field startHour:I

.field startMinute:I

.field private startTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

.field private tag:Ljava/lang/String;

.field toHour:I

.field toMinute:I

.field private toTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

.field private touch0:Landroid/view/View;

.field private touch1:Landroid/view/View;

.field private touch2:Landroid/view/View;

.field private touch3:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 60
    const-string v0, "SmartTimeActivity"

    iput-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$1;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    .line 360
    return-void
.end method

.method private InitialValue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->sp:Landroid/content/SharedPreferences;

    const-string v1, "timing_save_electricity_from_hour"

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    .line 228
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->sp:Landroid/content/SharedPreferences;

    const-string v1, "timing_save_electricity_from_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startMinute:I

    .line 229
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->sp:Landroid/content/SharedPreferences;

    const-string v1, "timing_save_electricity_to_hour"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    .line 230
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->sp:Landroid/content/SharedPreferences;

    const-string v1, "timing_save_electricity_to_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toMinute:I

    .line 232
    new-instance v0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    iget v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    iget v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startMinute:I

    invoke-direct {v0, p0, v1, v2}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;II)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    .line 233
    new-instance v0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    iget v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    iget v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toMinute:I

    invoke-direct {v0, p0, v1, v2}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;II)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    .line 234
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mStartTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mEndTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mStartTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mEndTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->updateTimeButtonUI()V

    return-void
.end method

.method static synthetic access$900()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private updateTimeButtonUI()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/16 v9, 0xc

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 239
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;

    const-string v7, "updateTimeButtonUI Enter"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InitalValue startHour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; toHour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;

    const-string v7, "24hour"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d0

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d0

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;

    const-string v7, "12hour"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, am:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01d9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, pm:Ljava/lang/String;
    iget v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    if-le v6, v9, :cond_1

    move-object v1, v2

    .line 257
    .local v1, funit:Ljava/lang/String;
    :goto_1
    iget v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    if-le v6, v9, :cond_2

    move-object v5, v2

    .line 258
    .local v5, tunit:Ljava/lang/String;
    :goto_2
    iget v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    if-le v6, v9, :cond_3

    .line 260
    move-object v1, v2

    .line 261
    iget v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    add-int/lit8 v3, v6, -0xc

    .line 267
    .local v3, tempshour:I
    :goto_3
    iget v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    if-le v6, v9, :cond_4

    .line 269
    move-object v5, v2

    .line 270
    iget v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    add-int/lit8 v4, v6, -0xc

    .line 276
    .local v4, tempthour:I
    :goto_4
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InitalValue tempStartHour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; tempToHour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; funit = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; tunit = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d7

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aput-object v1, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v6, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01d7

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget v10, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toMinute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aput-object v5, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v1           #funit:Ljava/lang/String;
    .end local v3           #tempshour:I
    .end local v4           #tempthour:I
    .end local v5           #tunit:Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 253
    goto/16 :goto_1

    .restart local v1       #funit:Ljava/lang/String;
    :cond_2
    move-object v5, v0

    .line 257
    goto/16 :goto_2

    .line 264
    .restart local v5       #tunit:Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 265
    iget v3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    .restart local v3       #tempshour:I
    goto/16 :goto_3

    .line 273
    :cond_4
    move-object v5, v0

    .line 274
    iget v4, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    .restart local v4       #tempthour:I
    goto/16 :goto_4
.end method


# virtual methods
.method protected doWhenChooseRadioButton(I)V
    .locals 6
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 200
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 201
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 202
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    iput p1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->choosemode:I

    .line 218
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "choosemode"

    iget v3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->choosemode:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    sget-object v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v2, "timing_save_electricity_switch"

    sget-boolean v3, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 220
    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimingSaveElectricityStart(Z)V

    .line 221
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfTimingSaveElectricity()V

    .line 224
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    return-void

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 404
    sget-object v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v2, "timing_save_electricity_switch"

    sget-boolean v3, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq p2, v1, :cond_0

    .line 407
    sget-object v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timing_save_electricity_switch"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    if-eqz p2, :cond_1

    .line 412
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfTimingSaveElectricity()V

    .line 417
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    :goto_0
    return-void

    .line 414
    .restart local v0       #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutTimingSaveElectricity()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "arg0"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v1, "powermanager"

    invoke-virtual {p0, v1, v9}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    .line 85
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e2

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, rightOfActionBar:Landroid/view/View;
    const v1, 0x7f0e032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 89
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    const v1, 0x7f0a03d5

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->actionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 96
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 97
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->actionBar:Landroid/app/ActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x15

    invoke-direct {v2, v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 101
    const v1, 0x7f030123

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->setContentView(I)V

    .line 102
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    sget-object v2, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v3, "timing_save_electricity_switch"

    sget-boolean v4, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 106
    const-string v1, "powermanager"

    invoke-virtual {p0, v1, v9}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->sp:Landroid/content/SharedPreferences;

    .line 107
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->editor:Landroid/content/SharedPreferences$Editor;

    .line 109
    const v1, 0x7f0e0050

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mStartTimeButton:Landroid/widget/Button;

    .line 110
    const v1, 0x7f0e0051

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mEndTimeButton:Landroid/widget/Button;

    .line 111
    const v1, 0x7f0e0053

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item0:Landroid/view/View;

    .line 112
    const v1, 0x7f0e0055

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item1:Landroid/view/View;

    .line 113
    const v1, 0x7f0e034d

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item2:Landroid/view/View;

    .line 114
    const v1, 0x7f0e034e

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item3:Landroid/view/View;

    .line 115
    const v1, 0x7f0e0360

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch0:Landroid/view/View;

    .line 116
    const v1, 0x7f0e0361

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch1:Landroid/view/View;

    .line 117
    const v1, 0x7f0e0362

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch2:Landroid/view/View;

    .line 118
    const v1, 0x7f0e0363

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch3:Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item0:Landroid/view/View;

    invoke-static {v1, v8, v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item1:Landroid/view/View;

    invoke-static {v1, v6, v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item2:Landroid/view/View;

    invoke-static {v1, v9, v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item3:Landroid/view/View;

    invoke-static {v1, v10, v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 123
    const v1, 0x7f0e0054

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio0:Landroid/widget/RadioButton;

    .line 124
    const v1, 0x7f0e0056

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio1:Landroid/widget/RadioButton;

    .line 125
    const v1, 0x7f0e00b0

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio2:Landroid/widget/RadioButton;

    .line 126
    const v1, 0x7f0e0139

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio3:Landroid/widget/RadioButton;

    .line 128
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item0:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item1:Landroid/view/View;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item2:Landroid/view/View;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item3:Landroid/view/View;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch0:Landroid/view/View;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch1:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch2:Landroid/view/View;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch3:Landroid/view/View;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio0:Landroid/widget/RadioButton;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio1:Landroid/widget/RadioButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio2:Landroid/widget/RadioButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio3:Landroid/widget/RadioButton;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item0:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item1:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item2:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->item3:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch0:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch1:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch2:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->touch3:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio0:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio2:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio3:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->sp:Landroid/content/SharedPreferences;

    const-string v2, "choosemode"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->choosemode:I

    .line 158
    iget v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->choosemode:I

    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->InitialValue()V

    .line 174
    return-void

    .line 160
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 397
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onStart()V

    .line 398
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->updateTimeButtonUI()V

    .line 399
    return-void
.end method

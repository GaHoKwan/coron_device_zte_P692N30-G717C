.class public Lcom/zte/heartyservice/setting/SmartModeLowSettings;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "SmartModeLowSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final MENU_CANCEL:I = 0x2

.field private static final MENU_SAVE:I = 0x1

.field private static mSpPowerManager:Landroid/content/SharedPreferences;


# instance fields
.field private MIN_V:I

.field choosemodeLow:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private item0:Landroid/view/View;

.field private item1:Landroid/view/View;

.field private item2:Landroid/view/View;

.field private item3:Landroid/view/View;

.field listener:Landroid/view/View$OnClickListener;

.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mVSeekBar:Landroid/widget/SeekBar;

.field private radio0:Landroid/widget/RadioButton;

.field private radio1:Landroid/widget/RadioButton;

.field private radio2:Landroid/widget/RadioButton;

.field private radio3:Landroid/widget/RadioButton;

.field private seekBarTitle:Landroid/widget/TextView;

.field private sp:Landroid/content/SharedPreferences;

.field private touch0:Landroid/view/View;

.field private touch1:Landroid/view/View;

.field private touch2:Landroid/view/View;

.field private touch3:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 34
    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->MIN_V:I

    .line 162
    new-instance v0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/SmartModeLowSettings$2;-><init>(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->MIN_V:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->seekBarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method protected doWhenChooseRadioButton(I)V
    .locals 5
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 185
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 186
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 187
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 188
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 189
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    iput p1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->choosemodeLow:I

    .line 204
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "choosemodeLow"

    iget v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->choosemodeLow:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    sget-object v1, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v2, "smart_low_switch"

    sget-boolean v3, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 206
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenSmartLow()V

    .line 209
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    return-void

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 200
    :pswitch_3
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 189
    nop

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
    .line 240
    sget-object v1, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v2, "smart_low_switch"

    sget-boolean v3, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq p2, v1, :cond_0

    .line 242
    sget-object v1, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "smart_low_switch"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    if-eqz p2, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenSmartLow()V

    .line 250
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local v0       #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutSmartLow()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string v2, "powermanager"

    invoke-virtual {p0, v2, v10}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    .line 59
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300e2

    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, rightOfActionBar:Landroid/view/View;
    const v2, 0x7f0e032a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 61
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v2, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    const v2, 0x7f0a00ab

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->actionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 64
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 65
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->actionBar:Landroid/app/ActionBar;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x15

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 67
    const v2, 0x7f0300ff

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->setContentView(I)V

    .line 68
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    sget-object v3, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v4, "smart_low_switch"

    sget-boolean v5, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 71
    const v2, 0x7f0e0353

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mVSeekBar:Landroid/widget/SeekBar;

    .line 72
    const v2, 0x7f0e035f

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->seekBarTitle:Landroid/widget/TextView;

    .line 74
    const-string v2, "powermanager"

    invoke-virtual {p0, v2, v10}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->sp:Landroid/content/SharedPreferences;

    .line 75
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->sp:Landroid/content/SharedPreferences;

    const-string v3, "smart_low_value"

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, SeekBarValue:I
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->seekBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01bc

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mVSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->MIN_V:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->mVSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;-><init>(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 105
    const v2, 0x7f0e0053

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item0:Landroid/view/View;

    .line 106
    const v2, 0x7f0e0055

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item1:Landroid/view/View;

    .line 107
    const v2, 0x7f0e034d

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item2:Landroid/view/View;

    .line 108
    const v2, 0x7f0e034e

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item3:Landroid/view/View;

    .line 109
    const v2, 0x7f0e0360

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch0:Landroid/view/View;

    .line 110
    const v2, 0x7f0e0361

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch1:Landroid/view/View;

    .line 111
    const v2, 0x7f0e0362

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch2:Landroid/view/View;

    .line 112
    const v2, 0x7f0e0363

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch3:Landroid/view/View;

    .line 113
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item0:Landroid/view/View;

    invoke-static {v2, v8, v9}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item1:Landroid/view/View;

    invoke-static {v2, v7, v9}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item2:Landroid/view/View;

    invoke-static {v2, v10, v9}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item3:Landroid/view/View;

    invoke-static {v2, v11, v9}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 117
    const v2, 0x7f0e0054

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio0:Landroid/widget/RadioButton;

    .line 118
    const v2, 0x7f0e0056

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio1:Landroid/widget/RadioButton;

    .line 119
    const v2, 0x7f0e00b0

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio2:Landroid/widget/RadioButton;

    .line 120
    const v2, 0x7f0e0139

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio3:Landroid/widget/RadioButton;

    .line 121
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item0:Landroid/view/View;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item1:Landroid/view/View;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item2:Landroid/view/View;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item3:Landroid/view/View;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch0:Landroid/view/View;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch1:Landroid/view/View;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch2:Landroid/view/View;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch3:Landroid/view/View;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio0:Landroid/widget/RadioButton;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio1:Landroid/widget/RadioButton;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio2:Landroid/widget/RadioButton;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio3:Landroid/widget/RadioButton;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item0:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item1:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item2:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->item3:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch0:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch1:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch2:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->touch3:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio0:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio1:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio2:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio3:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->sp:Landroid/content/SharedPreferences;

    const-string v3, "choosemodeLow"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->choosemodeLow:I

    .line 146
    iget v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->choosemodeLow:I

    packed-switch v2, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio0:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio1:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio2:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 157
    :pswitch_3
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->radio3:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

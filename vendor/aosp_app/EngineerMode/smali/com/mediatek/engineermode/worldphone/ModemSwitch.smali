.class public Lcom/mediatek/engineermode/worldphone/ModemSwitch;
.super Landroid/app/Activity;
.source "ModemSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/ModemSwitch"


# instance fields
.field private mButtonSet:Landroid/widget/Button;

.field private mRadioAuto:Landroid/widget/RadioButton;

.field private mRadioFdd:Landroid/widget/RadioButton;

.field private mRadioTdd:Landroid/widget/RadioButton;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 111
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mButtonSet:Landroid/widget/Button;

    if-eq p1, v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x0

    .line 115
    .local v1, result:Z
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioFdd:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    const-string v2, "EM/ModemSwitch"

    const-string v3, "Set modem type: 3"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v2, v4}, Lcom/mediatek/common/telephony/IWorldPhone;->setNetworkSelectionMode(I)V

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 124
    invoke-static {v5}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 126
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 127
    const/4 v1, 0x1

    .line 156
    :cond_3
    :goto_1
    const-string v2, "EM/ModemSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set modem type result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz v1, :cond_7

    .line 158
    const-string v2, "Switch succeed."

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 163
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    .line 164
    .local v0, modemType:I
    const-string v2, "EM/ModemSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get modem type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-ne v0, v5, :cond_8

    .line 166
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v3, 0x7f0805e7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 129
    .end local v0           #modemType:I
    :cond_4
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioTdd:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    const-string v2, "EM/ModemSwitch"

    const-string v3, "Set modem type: 4"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v2, v4}, Lcom/mediatek/common/telephony/IWorldPhone;->setNetworkSelectionMode(I)V

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 138
    invoke-static {v6}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 140
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 141
    const/4 v1, 0x1

    goto :goto_1

    .line 143
    :cond_6
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioAuto:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "EM/ModemSwitch"

    const-string v3, "Set modem type: auto"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v2, v7}, Lcom/mediatek/common/telephony/IWorldPhone;->setNetworkSelectionMode(I)V

    .line 151
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 160
    :cond_7
    const-string v2, "Switch failed."

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 167
    .restart local v0       #modemType:I
    :cond_8
    if-ne v0, v6, :cond_0

    .line 168
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v3, 0x7f0805e8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    const v0, 0x7f0b02ec

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioFdd:Landroid/widget/RadioButton;

    .line 75
    const v0, 0x7f0b02ed

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioTdd:Landroid/widget/RadioButton;

    .line 76
    const v0, 0x7f0b02ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioAuto:Landroid/widget/RadioButton;

    .line 77
    const v0, 0x7f0b02ea

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b02ef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mButtonSet:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mButtonSet:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    const-string v1, "EM/ModemSwitch"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    .line 88
    .local v0, modemType:I
    const-string v1, "EM/ModemSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get modem type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v2, 0x7f0805e7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioFdd:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 101
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "world_phone_auto_select_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 103
    iget-object v1, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioFdd:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 104
    iget-object v1, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioTdd:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioAuto:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 107
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v2, 0x7f0805e8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v1, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioTdd:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v2, 0x7f0805e6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query Modem type failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

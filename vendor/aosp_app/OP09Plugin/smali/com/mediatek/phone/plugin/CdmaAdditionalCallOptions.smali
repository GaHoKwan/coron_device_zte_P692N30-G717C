.class public Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaAdditionalCallOptions.java"


# static fields
.field private static final BUTTON_CNIR_KEY:Ljava/lang/String; = "cdma_cnir"

.field private static final BUTTON_CW_KEY:Ljava/lang/String; = "button_cw_key"

.field private static final CW_HEADERS:[Ljava/lang/String; = null

.field private static final DIALOG_CW:I = 0x0

.field private static final GET_CONTACTS:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CdmaCallForwardOptions"

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final PHONE_PREFERENCE_NAME:Ljava/lang/String; = "com.android.phone_preferences"


# instance fields
.field private mButtonCW:Landroid/preference/Preference;

.field private mButtonCnir:Landroid/preference/CheckBoxPreference;

.field private mSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->NUM_PROJECTION:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ro.cdma.cw.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "ro.cdma.cw.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->CW_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->CW_HEADERS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->setCallForward(Ljava/lang/String;)V

    return-void
.end method

.method private static getCnirState()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cdma_cnir"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setCallForward(Ljava/lang/String;)V
    .locals 4
    .parameter "cf"

    .prologue
    .line 181
    const-string v1, "Settings/CdmaCallForwardOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCallForward][cf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget v1, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mSlot:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 188
    const-string v1, "com.android.phone.extra.slot"

    iget v2, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static setCnirState(Z)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 200
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cdma_cnir"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 92
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mButtonCW:Landroid/preference/Preference;

    .line 93
    const-string v2, "cdma_cnir"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mButtonCnir:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v2, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mButtonCnir:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->getCnirState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mSlot:I

    .line 96
    const-string v2, "Settings/CdmaCallForwardOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate][mSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/16 v8, 0x8

    .line 129
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, dialog:Landroid/app/Dialog;
    const v7, 0x7f030007

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 131
    iget-object v7, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mButtonCW:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    const v7, 0x1010001

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    .line 135
    .local v5, radioGroup:Landroid/widget/RadioGroup;
    const/high16 v7, 0x101

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 136
    .local v6, textView:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 137
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_0
    const v7, 0x7f0b0022

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 141
    .local v4, edittext:Landroid/widget/EditText;
    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_1
    const v7, 0x7f0b0023

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 146
    .local v0, addContactBtn:Landroid/widget/ImageButton;
    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :cond_2
    const v7, 0x7f0b0025

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 151
    .local v3, dialogSaveBtn:Landroid/widget/Button;
    if-eqz v3, :cond_3

    .line 152
    new-instance v7, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions$1;

    invoke-direct {v7, p0, v5, v1, p1}, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions$1;-><init>(Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;Landroid/widget/RadioGroup;Landroid/app/Dialog;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_3
    const v7, 0x7f0b0024

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 169
    .local v2, dialogCancelBtn:Landroid/widget/Button;
    if-eqz v2, :cond_4

    .line 170
    new-instance v7, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions$2;

    invoke-direct {v7, p0, v1}, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions$2;-><init>(Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;Landroid/app/Dialog;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_4
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 107
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 110
    const/4 v1, 0x1

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mButtonCW:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 124
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mButtonCnir:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->mButtonCnir:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/mediatek/phone/plugin/CdmaAdditionalCallOptions;->setCnirState(Z)V

    goto :goto_0
.end method

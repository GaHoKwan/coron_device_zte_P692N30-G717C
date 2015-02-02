.class public Lcom/baidu/stocksettings/c;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field public static a:Landroid/preference/CheckBoxPreference;


# instance fields
.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private e:Landroid/preference/CheckBoxPreference;

.field private f:Landroid/preference/CheckBoxPreference;

.field private g:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/ListPreference;

.field private i:Landroid/preference/ListPreference;

.field private j:Landroid/preference/Preference;

.field private k:Landroid/preference/CheckBoxPreference;

.field private l:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/stocksettings/c;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->h:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/stocksettings/c;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->i:Landroid/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080027

    new-instance v2, Lcom/baidu/stocksettings/f;

    invoke-direct {v2, p0}, Lcom/baidu/stocksettings/f;-><init>(Lcom/baidu/stocksettings/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6b22\u8fce"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f\u7684\uff0c\u4e0d\u518d\u63d0\u9192"

    new-instance v2, Lcom/baidu/stocksettings/g;

    invoke-direct {v2, p0}, Lcom/baidu/stocksettings/g;-><init>(Lcom/baidu/stocksettings/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080029

    new-instance v2, Lcom/baidu/stocksettings/h;

    invoke-direct {v2, p0}, Lcom/baidu/stocksettings/h;-><init>(Lcom/baidu/stocksettings/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/baidu/stocksettings/c;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/baidu/stocksettings/o;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/baidu/stocksettings/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "app_notshow"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v0, "quickboot"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/c;->b:Landroid/preference/CheckBoxPreference;

    const-string v0, "test"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/c;->c:Landroid/preference/CheckBoxPreference;

    const-string v0, "engmode"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/stocksettings/c;->j:Landroid/preference/Preference;

    const-string v0, "root"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sput-object v0, Lcom/baidu/stocksettings/c;->a:Landroid/preference/CheckBoxPreference;

    const-string v0, "ct"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/c;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "batterytip"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/c;->f:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->l:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->l:Landroid/preference/EditTextPreference;

    const v3, 0x7f080036

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->b:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/baidu/stocksettings/c;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "ipo_setting"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->c:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/baidu/stocksettings/c;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "display"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->d:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/baidu/stocksettings/c;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "ignore_sim_tips"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->e:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/baidu/stocksettings/c;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "status_bar_traffic"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/baidu/stocksettings/c;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "ct"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->f:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/baidu/stocksettings/c;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hide_batterytips"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_8
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/baidu/stocksettings/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/c;->i:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->i:Landroid/preference/ListPreference;

    new-instance v3, Lcom/baidu/stocksettings/e;

    invoke-direct {v3, p0}, Lcom/baidu/stocksettings/e;-><init>(Lcom/baidu/stocksettings/c;)V

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sdpath"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->i:Landroid/preference/ListPreference;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    :cond_9
    :goto_7
    return-void

    :cond_a
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->l:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/baidu/stocksettings/c;->l:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v0, v2

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto :goto_5

    :cond_10
    move v0, v2

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sdpath"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->i:Landroid/preference/ListPreference;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_7
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->l:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/stocksettings/c;->l:Landroid/preference/EditTextPreference;

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_custom_info_text"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/stocksettings/c;->l:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/baidu/stocksettings/o;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->f:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_batterytips"

    iget-object v0, p0, Lcom/baidu/stocksettings/c;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    sget-object v0, Lcom/baidu/stocksettings/c;->a:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f080040

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/baidu/stocksettings/c;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pm enable eu.chainfire.supersu"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "pm disable eu.chainfire.supersu"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->j:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.mediatek.engineermode"

    const-string v4, "com.mediatek.engineermode.EngineerMode"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/baidu/stocksettings/c;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080038

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->b:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ipo_setting"

    iget-object v4, p0, Lcom/baidu/stocksettings/c;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->c:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display"

    iget-object v4, p0, Lcom/baidu/stocksettings/c;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v1

    :cond_7
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->d:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ignore_sim_tips"

    iget-object v4, p0, Lcom/baidu/stocksettings/c;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v1

    :cond_9
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->e:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "status_bar_traffic"

    iget-object v4, p0, Lcom/baidu/stocksettings/c;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_2
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v2, v1

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->g:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ct"

    iget-object v4, p0, Lcom/baidu/stocksettings/c;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v2, v1

    :cond_d
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "busybox pkill com.android.systemui"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/baidu/stocksettings/c;->k:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    invoke-virtual {p0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_custom_info"

    iget-object v4, p0, Lcom/baidu/stocksettings/c;->k:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v2, v1

    :cond_f
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "busybox pkill com.android.systemui"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    const-string v0, "StockSettings:"

    const-string v2, "update rightnow"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto/16 :goto_1
.end method

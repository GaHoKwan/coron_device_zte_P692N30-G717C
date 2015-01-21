.class public Leu/chainfire/supersu/Pref;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .line 0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {p0, p3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object p0
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;
    .locals 1

    .line 0
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 104
    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 105
    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0, p3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 106
    :cond_1
    invoke-virtual {p0, p9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 107
    invoke-virtual {p0, p5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p6}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 109
    if-lez p4, :cond_2

    invoke-virtual {p0, p4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 110
    :cond_2
    invoke-virtual {p0, p7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0, p8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    return-object p0
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;
    .locals 1

    .line 0
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 40
    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 41
    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {p0, p3}, Landroid/preference/Preference;->setSummary(I)V

    .line 42
    :cond_1
    invoke-virtual {p0, p4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 43
    if-eqz p5, :cond_2

    .line 44
    invoke-virtual {p0, p5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 46
    :cond_2
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 47
    return-object p0
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;
    .locals 1

    .line 0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 21
    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 22
    :cond_0
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 23
    return-object p0
.end method

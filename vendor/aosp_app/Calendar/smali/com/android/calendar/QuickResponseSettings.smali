.class public Lcom/android/calendar/QuickResponseSettings;
.super Landroid/preference/PreferenceFragment;
.source "QuickResponseSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickResponseSettings"


# instance fields
.field mEditTextPrefs:[Landroid/preference/EditTextPreference;

.field mResponses:[Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private isValidResponse(Ljava/lang/String;)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "QuickResponseSettings"

    const-string v3, "The response text is empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mToast:Landroid/widget/Toast;

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 123
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 135
    :goto_0
    return v1

    .line 127
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "QuickResponseSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The response exist, i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mToast:Landroid/widget/Toast;

    const v3, 0x7f0c0036

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 131
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    check-cast p1, Lcom/android/calendar/CalendarSettingsActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/android/calendar/CalendarSettingsActivity;->hideMenuButtons()V

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 47
    .local v6, ps:Landroid/preference/PreferenceScreen;
    const v8, 0x7f0c0087

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/calendar/Utils;->getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    .line 51
    iget-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 52
    iget-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    array-length v8, v8

    new-array v8, v8, [Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    .line 54
    iget-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, i:I
    iget-object v0, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    .line 57
    .local v7, response:Ljava/lang/String;
    new-instance v1, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, et:Landroid/preference/EditTextPreference;
    const v8, 0x7f0c0088

    invoke-virtual {v1, v8}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 59
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v1, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    iget-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aput-object v1, v8, v3

    .line 63
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 56
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 66
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #et:Landroid/preference/EditTextPreference;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #response:Ljava/lang/String;
    :cond_0
    const-string v8, "QuickResponseSettings"

    const-string v9, "No responses found"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mToast:Landroid/widget/Toast;

    .line 72
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v3

    if-nez v3, :cond_3

    .line 94
    iget-object v3, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, p2

    .line 96
    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/calendar/QuickResponseSettings;->isValidResponse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 99
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "preferences_quick_responses"

    iget-object v4, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    .line 111
    :cond_1
    :goto_1
    return v2

    .line 103
    .restart local v1       #value:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarSettingsActivity;

    .line 84
    .local v0, activity:Lcom/android/calendar/CalendarSettingsActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 87
    :cond_0
    return-void
.end method

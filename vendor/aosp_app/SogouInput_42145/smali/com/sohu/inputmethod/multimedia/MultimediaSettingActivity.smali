.class public Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;
.super Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Bundle;

.field private a:Landroid/preference/CheckBoxPreference;

.field private a:Landroid/preference/Preference;

.field private a:Landroid/preference/PreferenceScreen;

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    .line 53
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    new-instance v1, Luq;

    invoke-direct {v1, p0}, Luq;-><init>(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/CheckBoxPreference;

    .line 75
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lur;

    invoke-direct {v1, p0}, Lur;-><init>(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lus;

    invoke-direct {v1, p0}, Lus;-><init>(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/os/Bundle;

    const-string v1, "multimedia_serial_no"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/os/Bundle;

    const-string v1, "sogoumedia_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 135
    new-instance v0, Lvj;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/os/Bundle;

    const-string v6, "sogoumessage_item"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    check-cast v4, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    iget-object v6, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/os/Bundle;

    const-string v7, "media_list_size"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lvj;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/util/List;JLandroid/os/Handler;)V

    invoke-virtual {v0}, Lvj;->start()V

    .line 140
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const v4, 0x7f0b0024

    const v3, 0x7f0b0023

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 143
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    :cond_0
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 153
    :cond_1
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    :cond_2
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "500"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->addPreferencesFromResource(I)V

    .line 165
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/PreferenceScreen;

    .line 166
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/preference/Preference;

    .line 167
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->d()V

    .line 168
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/os/Bundle;

    .line 44
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a()V

    .line 48
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->b()V

    .line 49
    return-void
.end method

.method protected onStop()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 96
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onStop()V

    .line 97
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0362

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->c()Z

    move-result v1

    .line 100
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->d()Z

    move-result v2

    .line 101
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()J

    move-result-wide v3

    .line 102
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/os/Bundle;

    const-string v5, "MMS_PART_SIZE"

    invoke-virtual {v0, v5, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 104
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 105
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v7

    invoke-virtual {v7}, Lafp;->a()Z

    move-result v7

    if-nez v7, :cond_2

    .line 107
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->c()V

    .line 109
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->finish()V

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, v3, v9

    if-ltz v0, :cond_1

    cmp-long v0, v5, v3

    if-gez v0, :cond_2

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->c()V

    .line 113
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->finish()V

    goto :goto_0

    .line 117
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v1, "com.sohu.inputmethod.sms.new"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->finish()V

    goto :goto_0
.end method

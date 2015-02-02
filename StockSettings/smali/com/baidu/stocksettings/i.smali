.class public Lcom/baidu/stocksettings/i;
.super Landroid/preference/PreferenceFragment;


# instance fields
.field private a:Landroid/preference/Preference;

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080027

    new-instance v2, Lcom/baidu/stocksettings/j;

    invoke-direct {v2, p0}, Lcom/baidu/stocksettings/j;-><init>(Lcom/baidu/stocksettings/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080029

    new-instance v2, Lcom/baidu/stocksettings/k;

    invoke-direct {v2, p0}, Lcom/baidu/stocksettings/k;-><init>(Lcom/baidu/stocksettings/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080027

    new-instance v2, Lcom/baidu/stocksettings/l;

    invoke-direct {v2, p0}, Lcom/baidu/stocksettings/l;-><init>(Lcom/baidu/stocksettings/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080029

    new-instance v2, Lcom/baidu/stocksettings/m;

    invoke-direct {v2, p0}, Lcom/baidu/stocksettings/m;-><init>(Lcom/baidu/stocksettings/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/baidu/stocksettings/i;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "quick_restart"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/stocksettings/i;->a:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "rec"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/stocksettings/i;->d:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/i;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/i;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/stocksettings/i;->e:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "mipop"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/stocksettings/i;->f:Landroid/preference/Preference;

    const-string v0, "mount -o remount,rw /system"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const v5, 0x7f080038

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/stocksettings/i;->b:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/baidu/stocksettings/i;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "mv /system/media/bootaudio.mp3.bak /system/media/bootaudio.mp3"

    invoke-static {v2}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/baidu/stocksettings/i;->c:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/baidu/stocksettings/i;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mv /system/media/shutaudio.mp3.bak /system/media/shutaudio.mp3"

    invoke-static {v2}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/baidu/stocksettings/i;->a:Landroid/preference/Preference;

    if-ne p2, v2, :cond_4

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->a()V

    :goto_2
    return v0

    :cond_2
    const-string v2, "mv /system/media/bootaudio.mp3 /system/media/bootaudio.mp3.bak"

    invoke-static {v2}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "mv /system/media/shutaudio.mp3 /system/media/shutaudio.mp3.bak"

    invoke-static {v2}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/baidu/stocksettings/i;->d:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->b()V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/baidu/stocksettings/i;->f:Landroid/preference/Preference;

    if-ne p2, v2, :cond_6

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.mipop"

    const-string v4, "com.android.mipop.MIPopActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/baidu/stocksettings/i;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/baidu/stocksettings/i;->e:Landroid/preference/Preference;

    if-ne p2, v2, :cond_7

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.mediatek.schpwronoff"

    const-string v4, "com.mediatek.schpwronoff.AlarmClock"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/baidu/stocksettings/i;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/stocksettings/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_2
.end method

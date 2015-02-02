.class public Lcom/baidu/stocksettings/n;
.super Landroid/preference/PreferenceFragment;


# instance fields
.field private a:Z

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private e:Landroid/preference/CheckBoxPreference;

.field private f:Landroid/preference/CheckBoxPreference;

.field private g:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/baidu/stocksettings/n;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "camera_sound"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/n;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "camera_sound1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/n;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "camera_sound2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/n;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "camera_sound3"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/n;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/n;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/stocksettings/n;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "dolby"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/stocksettings/n;->h:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FirstBoot"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/stocksettings/n;->a:Z

    iget-boolean v1, p0, Lcom/baidu/stocksettings/n;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FirstBoot"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "mount -o remount,rw /system"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->f:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "mv /system/media/bootaudio.mp3.bak /system/media/bootaudio.mp3"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/stocksettings/n;->g:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "mv /system/media/shutaudio.mp3.bak /system/media/shutaudio.mp3"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/baidu/stocksettings/n;->b:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "mv /system/media/audio/ui/camera_click.bak /system/media/audio/ui/camera_click.ogg"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/baidu/stocksettings/n;->c:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "mv /system/media/audio/ui/camera_focus.bak /system/media/audio/ui/camera_focus.ogg"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    const-string v1, "chmod 0777 /system/media/audio/ui/camera_focus.ogg"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/baidu/stocksettings/n;->d:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "mv /system/media/audio/ui/camera_shutter.bak /system/media/audio/ui/camera_shutter.ogg"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/baidu/stocksettings/n;->e:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/baidu/stocksettings/n;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "mv /system/media/audio/ui/VideoRecord.bak /system/media/audio/ui/VideoRecord.ogg"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/baidu/stocksettings/n;->h:Landroid/preference/Preference;

    if-ne p2, v1, :cond_6

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.huangzt.dolbyeffectloader"

    const-string v3, "com.huangzt.dolbyeffectloader.MainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/baidu/stocksettings/n;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_6
    :goto_6
    return v0

    :cond_7
    const-string v1, "mv /system/media/bootaudio.mp3 /system/media/bootaudio.mp3.bak"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v1, "mv /system/media/shutaudio.mp3 /system/media/shutaudio.mp3.bak"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v1, "mv /system/media/audio/ui/camera_click.ogg /system/media/audio/ui/camera_click.bak"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v1, "mv /system/media/audio/ui/camera_focus.ogg /system/media/audio/ui/camera_focus.bak"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v1, "mv /system/media/audio/ui/camera_shutter.ogg /system/media/audio/ui/camera_shutter.bak"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    const-string v1, "mv /system/media/audio/ui/VideoRecord.ogg /system/media/audio/ui/VideoRecord.bak"

    invoke-static {v1}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/baidu/stocksettings/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080038

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6
.end method

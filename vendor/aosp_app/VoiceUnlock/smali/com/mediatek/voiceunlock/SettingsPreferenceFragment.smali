.class public Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/mediatek/voiceunlock/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"


# instance fields
.field private mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mIsActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mIsActive:Z

    .line 201
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;)Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 301
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 67
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isDialogShowing(I)Z
    .locals 3
    .parameter "dialogId"

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v2, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v2}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 157
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 101
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mIsActive:Z

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mIsActive:Z

    .line 113
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 143
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 48
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 51
    :cond_0
    return-void
.end method

.method protected setCancelable(Z)V
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 184
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 195
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mIsActive:Z

    if-nez v0, :cond_1

    .line 123
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Current activity is not active, skip show dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/mediatek/voiceunlock/DialogCreatable;I)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 128
    iget-object v0, p0, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->mDialogFragment:Lcom/mediatek/voiceunlock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 307
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/high16 v3, 0x7f08

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 309
    const/4 v1, 0x1

    .line 314
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 311
    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"
    .parameter "resID"

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 327
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 329
    const/4 v1, 0x1

    .line 335
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 331
    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x0

    goto :goto_0
.end method

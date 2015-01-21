.class Lcom/android/email/activity/setup/AccountSettingsFragment$TextNotNullWatcher;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextNotNullWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>(Landroid/preference/EditTextPreference;)V
    .locals 1
    .parameter "editText"

    .prologue
    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$TextNotNullWatcher;->mEditText:Landroid/preference/EditTextPreference;

    .line 855
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$TextNotNullWatcher;->mEditText:Landroid/preference/EditTextPreference;

    .line 856
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 860
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 866
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 871
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$TextNotNullWatcher;->mEditText:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$TextNotNullWatcher;->mEditText:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 873
    .local v1, d:Landroid/app/Dialog;
    instance-of v2, v1, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 874
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 875
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 876
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 880
    .end local v0           #btn:Landroid/widget/Button;
    :cond_0
    return-void

    .line 876
    .restart local v0       #btn:Landroid/widget/Button;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

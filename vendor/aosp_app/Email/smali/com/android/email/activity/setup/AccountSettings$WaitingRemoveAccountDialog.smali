.class public Lcom/android/email/activity/setup/AccountSettings$WaitingRemoveAccountDialog;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitingRemoveAccountDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WaitingRemoveDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/email/activity/setup/AccountSettings$WaitingRemoveAccountDialog;
    .locals 1

    .prologue
    .line 960
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$WaitingRemoveAccountDialog;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSettings$WaitingRemoveAccountDialog;-><init>()V

    .line 961
    .local v0, dialog:Lcom/android/email/activity/setup/AccountSettings$WaitingRemoveAccountDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 967
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 968
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0801cc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 971
    return-object v1
.end method

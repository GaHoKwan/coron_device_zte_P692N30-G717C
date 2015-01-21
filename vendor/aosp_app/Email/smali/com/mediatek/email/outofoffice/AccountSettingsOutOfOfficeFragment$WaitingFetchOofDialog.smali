.class public Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;
.super Landroid/app/DialogFragment;
.source "AccountSettingsOutOfOfficeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitingFetchOofDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WaitingFetchOofDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;
    .locals 2
    .parameter "fragment"

    .prologue
    .line 633
    new-instance v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    invoke-direct {v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;-><init>()V

    .line 634
    .local v0, dialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 635
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    .line 654
    .local v0, fragment:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;
    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->onCheckingDialogCancel()V
    invoke-static {v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    .line 655
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 656
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 641
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 642
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 643
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080057

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

    .line 647
    return-object v1
.end method

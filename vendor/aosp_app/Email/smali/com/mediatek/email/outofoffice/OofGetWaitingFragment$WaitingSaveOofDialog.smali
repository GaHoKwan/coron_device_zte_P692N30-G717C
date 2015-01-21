.class public Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;
.super Landroid/app/DialogFragment;
.source "OofGetWaitingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitingSaveOofDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WaitingSaveOofDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;
    .locals 2
    .parameter "parentFragment"

    .prologue
    .line 337
    new-instance v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    invoke-direct {v0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;-><init>()V

    .line 338
    .local v0, dialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 339
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    .line 357
    .local v0, parentFragment:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;
    #calls: Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->onCheckingDialogCancel()V
    invoke-static {v0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->access$400(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)V

    .line 358
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 359
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 345
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 346
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 347
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080056

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

    .line 351
    return-object v1
.end method

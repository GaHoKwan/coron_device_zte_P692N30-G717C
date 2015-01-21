.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$2;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 593
    sget-object v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->sSavebutton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    .line 594
    .local v0, btn:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 595
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$2;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;
    invoke-static {v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->access$2200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;->onSettingFinished()V

    .line 596
    return-void
.end method

.class Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment$2;
.super Ljava/lang/Object;
.source "OofSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment$2;->this$0:Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 143
    sget-object v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->sSavebutton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    .line 144
    .local v0, btn:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment$2;->this$0:Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 146
    return-void
.end method

.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->loadSettings(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->disableOutOfficeOption()V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 315
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->enableOutOfficeOption()V

    goto :goto_0
.end method

.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$5;
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
    .line 344
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$5;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$5;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->showDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 348
    return-void
.end method

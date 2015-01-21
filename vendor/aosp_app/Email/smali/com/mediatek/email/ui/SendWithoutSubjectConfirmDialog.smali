.class public Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog;
.super Landroid/app/DialogFragment;
.source "SendWithoutSubjectConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SendWithoutSubjectConfirmDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;

    .line 53
    .local v0, callback:Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;
    invoke-interface {v0}, Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;->onOkPressed()V

    goto :goto_0

    .line 55
    .end local v0           #callback:Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;

    .line 56
    .restart local v0       #callback:Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;
    invoke-interface {v0}, Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;->onCancelPressed()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 36
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 37
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0800ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08005f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08007b

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080079

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

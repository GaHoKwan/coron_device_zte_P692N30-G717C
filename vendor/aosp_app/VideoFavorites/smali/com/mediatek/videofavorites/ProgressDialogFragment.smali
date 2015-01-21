.class public Lcom/mediatek/videofavorites/ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;
    }
.end annotation


# static fields
.field static final KEY_PROMPT:Ljava/lang/String; = "prompt"

.field static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mListener:Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    return-void
.end method

.method public static newInstance(II)Lcom/mediatek/videofavorites/ProgressDialogFragment;
    .locals 3
    .parameter "idTitle"
    .parameter "idPrompt"

    .prologue
    .line 63
    new-instance v1, Lcom/mediatek/videofavorites/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/mediatek/videofavorites/ProgressDialogFragment;-><init>()V

    .line 64
    .local v1, frag:Lcom/mediatek/videofavorites/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "prompt"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    instance-of v0, p1, Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;

    .end local p1
    iput-object p1, p0, Lcom/mediatek/videofavorites/ProgressDialogFragment;->mListener:Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;

    .line 80
    :goto_0
    return-void

    .line 78
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/videofavorites/ProgressDialogFragment;->mListener:Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mediatek/videofavorites/ProgressDialogFragment;->mListener:Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mediatek/videofavorites/ProgressDialogFragment;->mListener:Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;

    invoke-interface {v0}, Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;->onCancel()V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 90
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 92
    .local v0, pdlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "prompt"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 96
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 99
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/videofavorites/ProgressDialogFragment;->mListener:Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;

    .line 85
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 86
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 111
    .local v0, pdlg:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 114
    :cond_0
    return-void
.end method

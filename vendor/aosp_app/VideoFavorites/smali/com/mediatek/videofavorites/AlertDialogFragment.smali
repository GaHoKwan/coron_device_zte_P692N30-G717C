.class public Lcom/mediatek/videofavorites/AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;
    }
.end annotation


# static fields
.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_PROMPT:Ljava/lang/String; = "prompt"

.field static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mListener:Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    return-void
.end method

.method public static newInstance(IILjava/lang/String;)Lcom/mediatek/videofavorites/AlertDialogFragment;
    .locals 3
    .parameter "idTitle"
    .parameter "idPrompt"
    .parameter "name"

    .prologue
    .line 63
    new-instance v1, Lcom/mediatek/videofavorites/AlertDialogFragment;

    invoke-direct {v1}, Lcom/mediatek/videofavorites/AlertDialogFragment;-><init>()V

    .line 64
    .local v1, frag:Lcom/mediatek/videofavorites/AlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, arg:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "prompt"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    :try_start_0
    check-cast p1, Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;

    .end local p1
    iput-object p1, p0, Lcom/mediatek/videofavorites/AlertDialogFragment;->mListener:Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, ce:Ljava/lang/ClassCastException;
    const-string v1, "@@@"

    const-string v2, "Please implement AlergDialogFragment.OnClickListener to use this Fragment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/videofavorites/AlertDialogFragment;->mListener:Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mediatek/videofavorites/AlertDialogFragment;->mListener:Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;

    invoke-interface {v0}, Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;->onClickNegativeButton()V

    .line 109
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 113
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mediatek/videofavorites/AlertDialogFragment;->mListener:Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;

    invoke-interface {v0}, Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;->onClickPositiveButton()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v0, -0x2

    if-ne v0, p2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mediatek/videofavorites/AlertDialogFragment;->mListener:Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;

    invoke-interface {v0}, Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;->onClickNegativeButton()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "prompt"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/videofavorites/AlertDialogFragment;->mListener:Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;

    .line 99
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 100
    return-void
.end method

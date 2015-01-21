.class public Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfirmDialogFragment"
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "speed_dial"


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3131
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 3136
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3137
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 3141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3142
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3143
    const v1, 0x7f0c00fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3144
    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment$1;-><init>(Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3152
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment$2;-><init>(Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3159
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

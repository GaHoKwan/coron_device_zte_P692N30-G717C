.class Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3153
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment$2;->this$1:Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment$2;->this$1:Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 3157
    return-void
.end method

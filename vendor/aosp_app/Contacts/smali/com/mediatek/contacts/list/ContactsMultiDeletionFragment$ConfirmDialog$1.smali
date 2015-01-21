.class Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog$1;
.super Ljava/lang/Object;
.source "ContactsMultiDeletionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog$1;->this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 81
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog$1;->this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$ConfirmDialog;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;

    .line 82
    .local v0, target:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;
    if-eqz v0, :cond_0

    .line 83
    #calls: Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->handleDelete()V
    invoke-static {v0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->access$000(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;)V

    .line 85
    :cond_0
    return-void
.end method

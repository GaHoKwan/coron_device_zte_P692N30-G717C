.class Lcom/mediatek/contacts/detail/GroupListDialog$1;
.super Ljava/lang/Object;
.source "GroupListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/detail/GroupListDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/detail/GroupListDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/detail/GroupListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/contacts/detail/GroupListDialog$1;->this$0:Lcom/mediatek/contacts/detail/GroupListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog$1;->this$0:Lcom/mediatek/contacts/detail/GroupListDialog;

    #getter for: Lcom/mediatek/contacts/detail/GroupListDialog;->mTitleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/contacts/detail/GroupListDialog;->access$000(Lcom/mediatek/contacts/detail/GroupListDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog$1;->this$0:Lcom/mediatek/contacts/detail/GroupListDialog;

    #getter for: Lcom/mediatek/contacts/detail/GroupListDialog;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;
    invoke-static {v0}, Lcom/mediatek/contacts/detail/GroupListDialog;->access$100(Lcom/mediatek/contacts/detail/GroupListDialog;)Lcom/android/contacts/detail/ContactDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->createNewGroup()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog$1;->this$0:Lcom/mediatek/contacts/detail/GroupListDialog;

    #getter for: Lcom/mediatek/contacts/detail/GroupListDialog;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/contacts/detail/GroupListDialog;->access$200(Lcom/mediatek/contacts/detail/GroupListDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog$1;->this$0:Lcom/mediatek/contacts/detail/GroupListDialog;

    #getter for: Lcom/mediatek/contacts/detail/GroupListDialog;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;
    invoke-static {v0}, Lcom/mediatek/contacts/detail/GroupListDialog;->access$100(Lcom/mediatek/contacts/detail/GroupListDialog;)Lcom/android/contacts/detail/ContactDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->countSelectedGroupItem()V

    .line 82
    iget-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog$1;->this$0:Lcom/mediatek/contacts/detail/GroupListDialog;

    #getter for: Lcom/mediatek/contacts/detail/GroupListDialog;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;
    invoke-static {v0}, Lcom/mediatek/contacts/detail/GroupListDialog;->access$100(Lcom/mediatek/contacts/detail/GroupListDialog;)Lcom/android/contacts/detail/ContactDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->updateGroupIdToContact()V

    goto :goto_0
.end method

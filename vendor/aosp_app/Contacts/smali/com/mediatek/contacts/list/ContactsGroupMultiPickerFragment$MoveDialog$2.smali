.class Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;
.super Ljava/lang/Object;
.source "ContactsGroupMultiPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J
    invoke-static {v0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$600(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    new-instance v1, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    iget-object v2, v2, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$900(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;-><init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;Landroid/app/Activity;)V

    #setter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveGroupTask:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$802(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    .line 508
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveGroupTask:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;
    invoke-static {v0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$800(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$1000(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$700(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupId:J
    invoke-static {v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$1100(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J
    invoke-static {v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$600(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$1200(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$900(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$900(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c008d

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.class Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$1;
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
    .line 492
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$1;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 495
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$1;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mIdArray:[J
    invoke-static {v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$400(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)[J

    move-result-object v3

    aget-wide v0, v3, p2

    .line 496
    .local v0, id:J
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$1;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$500(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, p2

    .line 497
    .local v2, title:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onClick]Move to title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ||id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$1;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #setter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J
    invoke-static {v3, v0, v1}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$602(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;J)J

    .line 499
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$1;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    #setter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->access$702(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 500
    return-void
.end method

.class Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$2;
.super Ljava/lang/Object;
.source "ContactsGroupMultiPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;->onPreExecute(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

.field final synthetic val$target:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    iput-object p2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$2;->val$target:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 196
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    #setter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;->mCancel:Z
    invoke-static {v1, v2}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;->access$002(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;Z)Z

    .line 197
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$2;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    .line 198
    .local v0, cancel:Z
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "------------cancel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$2;->val$target:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 201
    return-void
.end method

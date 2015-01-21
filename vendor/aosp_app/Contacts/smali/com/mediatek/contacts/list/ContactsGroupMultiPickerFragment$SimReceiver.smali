.class Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$SimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactsGroupMultiPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$SimReceiver;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 534
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onReceive] action is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v3, "android.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    const-string v3, "ready"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 538
    .local v1, phbReady:Z
    const-string v3, "simId"

    const/16 v4, -0xa

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 539
    .local v2, simId:I
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onReceive] PhbReady:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|simId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$SimReceiver;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$1300(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 542
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onReceive] some SIM PHB not ready, Activity finish:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$SimReceiver;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$SimReceiver;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 547
    .end local v1           #phbReady:Z
    .end local v2           #simId:I
    :cond_0
    return-void
.end method

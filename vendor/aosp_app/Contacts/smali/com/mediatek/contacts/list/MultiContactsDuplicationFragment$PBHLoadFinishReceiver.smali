.class Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiContactsDuplicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBHLoadFinishReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;-><init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, action:Ljava/lang/String;
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive intent is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v2, "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$100(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Landroid/accounts/Account;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v2}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v1

    .line 385
    .local v1, slot:I
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive intent slot is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "slotId"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v2, "slotId"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 387
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;
    invoke-static {v2}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$800(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$PBHLoadFinishReceiver;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequestHandler:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;
    invoke-static {v3}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$800(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    .end local v1           #slot:I
    :cond_0
    return-void
.end method

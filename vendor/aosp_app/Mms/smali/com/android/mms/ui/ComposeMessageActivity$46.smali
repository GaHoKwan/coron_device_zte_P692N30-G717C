.class Lcom/android/mms/ui/ComposeMessageActivity$46;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->processPickResult(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$contactsId:[J

.field final synthetic val$mSelectContactsNumbers:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;[J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5802
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->val$mSelectContactsNumbers:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->val$contactsId:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 5804
    new-instance v5, Lcom/android/mms/data/ContactList;

    invoke-direct {v5}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 5805
    .local v5, list:Lcom/android/mms/data/ContactList;
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 5810
    .local v1, allList:Lcom/android/mms/data/ContactList;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->val$mSelectContactsNumbers:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->val$contactsId:[J

    invoke-static {v14}, Lcom/android/mms/data/ContactList;->blockingGetByIds([J)Lcom/android/mms/data/ContactList;

    move-result-object v10

    .line 5813
    .local v10, selected:Lcom/android/mms/data/ContactList;
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v8

    .line 5820
    .local v8, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/android/mms/data/ContactList;->getProtosomaitcNumbers()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 5821
    .local v13, selectedNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, ""

    .line 5822
    .local v12, selectedNumberAfterFormat:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 5823
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5824
    .local v7, number:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 5825
    const/4 v14, 0x0

    invoke-static {v7, v14}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 5826
    .local v2, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5851
    .end local v2           #c:Lcom/android/mms/data/Contact;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #selected:Lcom/android/mms/data/ContactList;
    .end local v12           #selectedNumberAfterFormat:Ljava/lang/String;
    .end local v13           #selectedNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 5852
    .local v6, msg:Landroid/os/Message;
    const/16 v15, 0x2331

    iput v15, v6, Landroid/os/Message;->what:I

    .line 5853
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5854
    throw v14

    .line 5810
    .end local v6           #msg:Landroid/os/Message;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->val$mSelectContactsNumbers:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v10

    goto :goto_0

    .line 5830
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #selected:Lcom/android/mms/data/ContactList;
    .restart local v12       #selectedNumberAfterFormat:Ljava/lang/String;
    .restart local v13       #selectedNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 5831
    .local v3, formatedNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5832
    .local v11, selectedNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5833
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 5834
    const/4 v14, 0x0

    invoke-static {v11, v14}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 5835
    .restart local v2       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5838
    .end local v2           #c:Lcom/android/mms/data/Contact;
    .end local v11           #selectedNumber:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5851
    .end local v3           #formatedNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 5852
    .restart local v6       #msg:Landroid/os/Message;
    const/16 v14, 0x2331

    iput v14, v6, Landroid/os/Message;->what:I

    .line 5853
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5857
    new-instance v9, Lcom/android/mms/ui/ComposeMessageActivity$46$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v1, v5}, Lcom/android/mms/ui/ComposeMessageActivity$46$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$46;Lcom/android/mms/data/ContactList;Lcom/android/mms/data/ContactList;)V

    .line 5872
    .local v9, populateWorker:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5873
    return-void

    .line 5840
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #msg:Landroid/os/Message;
    .end local v9           #populateWorker:Ljava/lang/Runnable;
    :cond_5
    :try_start_2
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5841
    .restart local v11       #selectedNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5842
    if-eqz v12, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 5843
    const/4 v14, 0x0

    invoke-static {v11, v14}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 5844
    .restart local v2       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5847
    .end local v2           #c:Lcom/android/mms/data/Contact;
    .end local v11           #selectedNumber:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

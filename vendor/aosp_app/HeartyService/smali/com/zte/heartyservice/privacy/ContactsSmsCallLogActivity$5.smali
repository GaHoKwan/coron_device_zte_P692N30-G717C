.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->setSelectActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 395
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$600(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 396
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$602(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 397
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v0, commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v1, v0

    .line 398
    check-cast v1, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 399
    .local v1, contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->setChecked(Z)V

    goto :goto_0

    .line 402
    .end local v0           #commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v1           #contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$602(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 403
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .restart local v0       #commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v1, v0

    .line 404
    check-cast v1, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 405
    .restart local v1       #contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->setChecked(Z)V

    goto :goto_1

    .line 409
    .end local v0           #commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v1           #contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$600(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 410
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updateCustomView()V

    .line 415
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$800(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 416
    return-void

    .line 412
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$600(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 413
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->resetActionBar(I)V

    goto :goto_2
.end method

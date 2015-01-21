.class Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;
.super Ljava/lang/Object;
.source "ContactsSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->setSelectActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$100(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$200(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 129
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$102(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 130
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$200(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Ljava/util/List;

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

    .line 131
    check-cast v1, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 132
    .local v1, contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->setChecked(Z)V

    goto :goto_0

    .line 135
    .end local v0           #commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v1           #contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$200(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$102(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 136
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$200(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Ljava/util/List;

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

    .line 137
    check-cast v1, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 138
    .restart local v1       #contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->setChecked(Z)V

    goto :goto_1

    .line 141
    .end local v0           #commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v1           #contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->updateCustomView()V

    .line 142
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$300(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 143
    return-void
.end method

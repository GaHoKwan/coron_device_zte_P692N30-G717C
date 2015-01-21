.class Lcom/android/contacts/detail/ContactDetailFragment$10;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->configDetailGroupList()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 4355
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$10;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4360
    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    .line 4361
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;

    .line 4362
    .local v1, item:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$10;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    move-result-object v3

    invoke-virtual {v3, p3, p2, p1}, Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 4363
    .local v0, checkText:Landroid/widget/CheckedTextView;
    if-nez v0, :cond_0

    .line 4385
    :goto_0
    return-void

    .line 4366
    :cond_0
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->isCreateGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4369
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$10;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->countSelectedGroupItem()V

    .line 4370
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$10;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->updateGroupIdToContact()V

    .line 4372
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$10;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->createNewGroup()V

    goto :goto_0

    .line 4375
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4376
    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 4377
    invoke-virtual {v1, v5}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->setChecked(Z)V

    .line 4384
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$10;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-boolean v4, v3, Lcom/android/contacts/detail/ContactDetailFragment;->isGroupItemChecked:Z

    goto :goto_0

    .line 4379
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 4380
    invoke-virtual {v1, v4}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->setChecked(Z)V

    goto :goto_1
.end method

.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 683
    :pswitch_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonData:Landroid/widget/Button;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$400(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 684
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonSystem:Landroid/widget/Button;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$500(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 685
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$600(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 686
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$600(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    .line 687
    .local v2, item:Lcom/zte/heartyservice/apksmanager/AbstractListItem;
    check-cast v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .end local v2           #item:Lcom/zte/heartyservice/apksmanager/AbstractListItem;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->setAppSelected(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 689
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$600(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I
    invoke-static {v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$700(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->sortList(Ljava/util/ArrayList;I)V

    .line 690
    new-instance v0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const v4, 0x7f03000e

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$600(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 692
    .local v0, adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 693
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 694
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 695
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$600(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 696
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$900(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    :goto_2
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 701
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04fd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 705
    :goto_3
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #setter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z
    invoke-static {v3, v7}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1102(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;Z)Z

    goto/16 :goto_0

    .line 698
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$900(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 703
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04fb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 707
    .end local v0           #adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v3, :cond_0

    .line 709
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listUninstallableApp(Z)V

    .line 710
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const v5, 0x7f0a0148

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-virtual {v6}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0148

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 712
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 717
    :pswitch_1
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonData:Landroid/widget/Button;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$400(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 718
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonSystem:Landroid/widget/Button;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$500(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 720
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    .line 721
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setmListView(Landroid/widget/ListView;)V

    .line 722
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->triggerByListItem()V

    .line 723
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1200(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 724
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1200(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I
    invoke-static {v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$700(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->sortList(Ljava/util/ArrayList;I)V

    .line 725
    new-instance v0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const v4, 0x7f03000e

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1200(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 727
    .restart local v0       #adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 728
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 729
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 730
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1200(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 731
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$900(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    :goto_4
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 736
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04fd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 740
    :goto_5
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #setter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z
    invoke-static {v3, v6}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1102(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;Z)Z

    goto/16 :goto_0

    .line 733
    :cond_5
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$900(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 738
    :cond_6
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04fc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 742
    .end local v0           #adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    :cond_7
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v3, :cond_0

    .line 744
    :try_start_1
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listUninstallableApp(Z)V

    .line 745
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const v5, 0x7f0a0148

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-virtual {v6}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0148

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 747
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x7f0e0112
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

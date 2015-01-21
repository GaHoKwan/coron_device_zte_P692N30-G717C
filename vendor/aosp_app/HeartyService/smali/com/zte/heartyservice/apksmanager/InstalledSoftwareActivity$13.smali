.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->changeCustomView(I)V
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
    .line 914
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 917
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$700(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #setter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I
    invoke-static {v0, p3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$702(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;I)I

    .line 922
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1100(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$600(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$700(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->sortList(Ljava/util/ArrayList;I)V

    .line 927
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1200(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$700(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->sortList(Ljava/util/ArrayList;I)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.class Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$2;
.super Ljava/lang/Object;
.source "ContactSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 157
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v2, 0x7f0e0058

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 158
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->setmSelected(Z)V

    .line 160
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 161
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedData()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 163
    .local v1, etmpResultData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->triggerByListItem()V
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    .line 164
    return-void

    .line 158
    .end local v1           #etmpResultData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

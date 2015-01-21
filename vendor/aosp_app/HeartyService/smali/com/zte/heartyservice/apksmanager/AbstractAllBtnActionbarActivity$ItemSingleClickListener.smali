.class public Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;
.super Ljava/lang/Object;
.source "AbstractAllBtnActionbarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemSingleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 254
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .line 255
    .local v1, item:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->isAppSelected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 256
    .local v0, isSelected:Z
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 257
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-virtual {v2, p3}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->ItemSingleClickOperation(I)V

    .line 258
    return-void
.end method

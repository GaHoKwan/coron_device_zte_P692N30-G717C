.class Lcom/zte/heartyservice/main/EditShortCutActivity$1;
.super Ljava/lang/Object;
.source "EditShortCutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/EditShortCutActivity;->addNewScrollView(ILcom/zte/heartyservice/main/ShortCutItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

.field final synthetic val$item:Lcom/zte/heartyservice/main/ShortCutItem;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/EditShortCutActivity;Landroid/view/View;Lcom/zte/heartyservice/main/ShortCutItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->val$item:Lcom/zte/heartyservice/main/ShortCutItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->unSelectListView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$000(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;
    invoke-static {v0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$100(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->val$item:Lcom/zte/heartyservice/main/ShortCutItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$200(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->val$item:Lcom/zte/heartyservice/main/ShortCutItem;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->add(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #calls: Lcom/zte/heartyservice/main/EditShortCutActivity;->resetListViewHeight()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$300(Lcom/zte/heartyservice/main/EditShortCutActivity;)V

    .line 127
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$500(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/common/datatype/EditableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v1}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$400(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$1;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->isShortCutOrderChanged:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$602(Lcom/zte/heartyservice/main/EditShortCutActivity;Z)Z

    .line 129
    return-void
.end method

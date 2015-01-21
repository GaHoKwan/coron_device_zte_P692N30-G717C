.class Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;
.super Ljava/lang/Object;
.source "EditShortCutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iput p2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 230
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v3}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$400(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;
    invoke-static {v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$500(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/common/datatype/EditableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, item:Lcom/zte/heartyservice/main/ShortCutItem;
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->val$position:I

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/zte/heartyservice/main/ShortCutItem;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->remove(Ljava/lang/Object;)V

    .line 239
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;
    invoke-static {v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$100(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/zte/heartyservice/main/EditShortCutActivity;->addNewScrollView(ILcom/zte/heartyservice/main/ShortCutItem;)I

    .line 240
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$100(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$700(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    .line 242
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v3}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$400(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;
    invoke-static {v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$700(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->itemLineHeigth:I
    invoke-static {v5}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$900(Lcom/zte/heartyservice/main/EditShortCutActivity;)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 247
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;
    invoke-static {v3}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$500(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/common/datatype/EditableListView;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$400(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    const/4 v4, 0x1

    #setter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->isShortCutOrderChanged:Z
    invoke-static {v3, v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$602(Lcom/zte/heartyservice/main/EditShortCutActivity;Z)Z

    .line 249
    :goto_1
    return-void

    .line 234
    :catch_0
    move-exception v1

    .line 236
    .local v1, e:Ljava/lang/Exception;
    goto :goto_1

    .line 243
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$100(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->scrollLineNumberLimet:I
    invoke-static {v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$1000(Lcom/zte/heartyservice/main/EditShortCutActivity;)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 244
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v3, v3, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v3}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$400(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->scrollLineNumberLimet:I
    invoke-static {v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$1000(Lcom/zte/heartyservice/main/EditShortCutActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    iget-object v5, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$100(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;->this$1:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->itemLineHeigth:I
    invoke-static {v5}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$900(Lcom/zte/heartyservice/main/EditShortCutActivity;)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

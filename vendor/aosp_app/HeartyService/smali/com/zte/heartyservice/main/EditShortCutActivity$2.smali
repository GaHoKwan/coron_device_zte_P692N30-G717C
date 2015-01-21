.class Lcom/zte/heartyservice/main/EditShortCutActivity$2;
.super Ljava/lang/Object;
.source "EditShortCutActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/EditShortCutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/EditShortCutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$2;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$2;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$200(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/main/ShortCutItem;

    .line 171
    .local v0, item:Lcom/zte/heartyservice/main/ShortCutItem;
    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$2;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$200(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->remove(Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$2;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$200(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->insert(Ljava/lang/Object;I)V

    .line 173
    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$2;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    const/4 v2, 0x1

    #setter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->isShortCutOrderChanged:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$602(Lcom/zte/heartyservice/main/EditShortCutActivity;Z)Z

    .line 174
    return-void
.end method

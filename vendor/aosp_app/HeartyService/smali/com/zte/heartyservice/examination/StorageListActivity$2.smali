.class Lcom/zte/heartyservice/examination/StorageListActivity$2;
.super Ljava/lang/Object;
.source "StorageListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/examination/StorageListActivity;->updateListView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/StorageListActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/examination/StorageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$2;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 179
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity$2;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #calls: Lcom/zte/heartyservice/examination/StorageListActivity;->startApplicationDetails(I)V
    invoke-static {v0, p3}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$600(Lcom/zte/heartyservice/examination/StorageListActivity;I)V

    .line 180
    return-void
.end method

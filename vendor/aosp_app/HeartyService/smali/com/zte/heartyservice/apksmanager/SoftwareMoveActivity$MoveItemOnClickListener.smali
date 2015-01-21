.class public Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;
.super Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemOnClickListener;
.source "SoftwareMoveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MoveItemOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemOnClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 230
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .line 232
    .local v0, item:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->setAppSelected(Ljava/lang/Boolean;)V

    .line 237
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$000(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;

    .line 239
    .local v1, localMoveableAppItem:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    iget-object v3, v1, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zte/heartyservice/common/utils/SysInfo;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    return-void
.end method

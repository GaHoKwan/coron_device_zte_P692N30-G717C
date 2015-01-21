.class public Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;
.super Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemOnClickListener;
.source "DefaultSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultItemOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;

    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemOnClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 135
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v0

    .line 136
    .local v0, index:I
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mDefaultSettingAppInfoList:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->access$000(Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mDefaultSettingAppInfoList:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->access$000(Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;

    .line 140
    .local v1, info:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    const-string v2, "DefaultSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;

    iget-object v3, v1, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zte/heartyservice/common/utils/SysInfo;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;

    const v3, 0x7f0a0380

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

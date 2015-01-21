.class Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;
.super Ljava/lang/Object;
.source "SimInfoSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/SimInfoSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 180
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$400(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 181
    .local v0, curIndex:I
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$500(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Lcom/zte/heartyservice/common/utils/GridAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/utils/GridAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #setter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I
    invoke-static {v2, v0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$602(Lcom/zte/heartyservice/net/SimInfoSettingActivity;I)I

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I
    invoke-static {v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$600(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGridAdapter:Lcom/zte/heartyservice/common/utils/GridAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$500(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Lcom/zte/heartyservice/common/utils/GridAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/utils/GridAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_1

    .line 185
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    const/4 v3, -0x1

    #setter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$602(Lcom/zte/heartyservice/net/SimInfoSettingActivity;I)I

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCityGrid:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$400(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Landroid/widget/GridView;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurLocation:I
    invoke-static {v3}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$600(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 188
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$200(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zte/heartyservice/net/LocationChooseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$2;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

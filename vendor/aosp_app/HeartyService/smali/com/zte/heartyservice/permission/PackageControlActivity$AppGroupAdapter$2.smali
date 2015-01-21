.class Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$2;
.super Ljava/lang/Object;
.source "PackageControlActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;

    .line 413
    .local v1, pHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$600(Lcom/zte/heartyservice/permission/PackageControlActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;->groupPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->children:Ljava/util/List;

    iget v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;->childPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    .line 416
    .local v0, item:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->setPermissonType(I)V

    .line 419
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$800(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$800(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->notifyDataSetChanged()V

    .line 422
    :cond_0
    return-void

    .line 416
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

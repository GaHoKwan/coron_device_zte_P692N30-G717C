.class Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$3;
.super Ljava/lang/Object;
.source "PermissionControlActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$3;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 486
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;

    .line 487
    .local v1, pHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$3;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$600(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;->groupPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    iget v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;->childPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 490
    .local v0, item:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->setPermissonType(I)V

    .line 494
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$3;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$000(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$3;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$000(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->notifyDataSetChanged()V

    .line 498
    :cond_0
    return-void

    .line 490
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

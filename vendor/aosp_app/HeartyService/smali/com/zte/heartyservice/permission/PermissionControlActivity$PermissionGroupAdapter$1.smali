.class Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$1;
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

.field final synthetic val$childrenList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$1;->val$childrenList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 325
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 327
    .local v1, what:I
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$300(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$1;->val$childrenList:Ljava/util/List;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$300(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    return-void

    .line 325
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

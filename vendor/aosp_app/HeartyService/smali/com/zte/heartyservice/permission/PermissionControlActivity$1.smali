.class Lcom/zte/heartyservice/permission/PermissionControlActivity$1;
.super Landroid/os/Handler;
.source "PermissionControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$1;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 58
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 59
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    .local v2, count:I
    iget v4, p1, Landroid/os/Message;->what:I

    .line 61
    .local v4, state:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 62
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 63
    .local v0, appInfo:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->setPermissonType(I)V

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v0           #appInfo:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    :cond_0
    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$1;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    invoke-static {v5}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$000(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 67
    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$1;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->listAdapter:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
    invoke-static {v5}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$000(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->notifyDataSetChanged()V

    .line 69
    :cond_1
    return-void
.end method

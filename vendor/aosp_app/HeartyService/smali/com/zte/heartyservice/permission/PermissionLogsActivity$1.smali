.class Lcom/zte/heartyservice/permission/PermissionLogsActivity$1;
.super Ljava/lang/Object;
.source "PermissionLogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/permission/PermissionLogsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$1;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$1;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->access$200(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->deleteAllLogRecords()Z

    .line 199
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$1;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->access$300(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$1;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->access$300(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$1;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;
    invoke-static {v1}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->access$200(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->getAllLogRecords()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 202
    :cond_0
    return-void
.end method

.class Lcom/zte/heartyservice/net/NetTrafficStatsActivity$6;
.super Ljava/lang/Object;
.source "NetTrafficStatsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchAll(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

.field final synthetic val$task:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$6;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$6;->val$task:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 327
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$6;->val$task:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->cancel(Z)Z

    move-result v0

    .line 328
    .local v0, cancel:Z
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$6;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1300(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$6;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1300(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 331
    :cond_0
    return-void
.end method

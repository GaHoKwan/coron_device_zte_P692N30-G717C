.class Lcom/zte/heartyservice/net/NetTrafficStatsActivity$7;
.super Ljava/lang/Object;
.source "NetTrafficStatsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->WifiswitchAll(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

.field final synthetic val$task:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$7;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$7;->val$task:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$7;->val$task:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->cancel(Z)Z

    move-result v0

    .line 408
    .local v0, cancel:Z
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$7;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1300(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$7;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$1300(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 411
    :cond_0
    return-void
.end method

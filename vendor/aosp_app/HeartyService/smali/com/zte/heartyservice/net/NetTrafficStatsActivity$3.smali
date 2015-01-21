.class Lcom/zte/heartyservice/net/NetTrafficStatsActivity$3;
.super Ljava/lang/Object;
.source "NetTrafficStatsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetTrafficStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const-string v0, "weijun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllSwitch onClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 111
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$002(Z)Z

    .line 112
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchAll(Z)V

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x663400

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 116
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$002(Z)Z

    .line 117
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchAll(Z)V

    goto :goto_0
.end method

.class Lcom/zte/heartyservice/net/NetTrafficStatsActivity$5;
.super Ljava/lang/Object;
.source "NetTrafficStatsActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 145
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 148
    packed-switch p2, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$402(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;I)I

    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateUI()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$500(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$402(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;I)I

    .line 155
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateUI()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->access$500(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f0e01b7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

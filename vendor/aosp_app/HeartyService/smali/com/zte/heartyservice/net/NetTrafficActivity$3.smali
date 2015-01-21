.class Lcom/zte/heartyservice/net/NetTrafficActivity$3;
.super Ljava/lang/Object;
.source "NetTrafficActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetTrafficActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v2, 0x0

    .line 284
    packed-switch p2, :pswitch_data_0

    .line 292
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    const/4 v1, -0x1

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$300(Lcom/zte/heartyservice/net/NetTrafficActivity;I)V

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V
    invoke-static {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$000(Lcom/zte/heartyservice/net/NetTrafficActivity;Z)V

    .line 296
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateAdjustBtn()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$400(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    .line 297
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V
    invoke-static {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$300(Lcom/zte/heartyservice/net/NetTrafficActivity;I)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$3;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    const/4 v1, 0x1

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$300(Lcom/zte/heartyservice/net/NetTrafficActivity;I)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x7f0e01c8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

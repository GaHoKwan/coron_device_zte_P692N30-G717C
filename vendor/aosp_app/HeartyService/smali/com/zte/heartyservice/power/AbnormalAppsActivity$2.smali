.class Lcom/zte/heartyservice/power/AbnormalAppsActivity$2;
.super Landroid/os/Handler;
.source "AbnormalAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/AbnormalAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$2;->this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$2;->this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    #getter for: Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->access$200(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lcom/zte/heartyservice/power/AbnormalAppsActivity$2;->this$0:Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    #getter for: Lcom/zte/heartyservice/power/AbnormalAppsActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/power/AbnormalAppsActivity;->access$300(Lcom/zte/heartyservice/power/AbnormalAppsActivity;)Landroid/widget/BaseExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

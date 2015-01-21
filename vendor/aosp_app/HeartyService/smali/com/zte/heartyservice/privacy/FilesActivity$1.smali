.class Lcom/zte/heartyservice/privacy/FilesActivity$1;
.super Landroid/os/Handler;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$1;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$1;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$000(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$1;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

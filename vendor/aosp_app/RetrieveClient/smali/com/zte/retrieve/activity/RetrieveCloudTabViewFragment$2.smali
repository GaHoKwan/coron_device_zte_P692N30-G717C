.class Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;
.super Ljava/lang/Object;
.source "RetrieveCloudTabViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 257
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 258
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v1, statusData:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
    invoke-static {v3}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$2(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->disableCloudRetrieve()I

    move-result v3

    #setter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->cloudStatus:I
    invoke-static {v2, v3}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$3(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;I)V

    .line 260
    const-string v2, "DEACTIVE_RESCODE"

    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->cloudStatus:I
    invoke-static {v3}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$4(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 262
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #calls: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->closeProcessDialog()V
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$5(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)V

    .line 263
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v2, v2, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->ThreadStarthandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    return-void
.end method

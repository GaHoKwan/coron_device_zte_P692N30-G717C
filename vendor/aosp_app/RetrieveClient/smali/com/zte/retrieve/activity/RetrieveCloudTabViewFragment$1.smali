.class Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;
.super Landroid/os/Handler;
.source "RetrieveCloudTabViewFragment.java"


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
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    .line 222
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v4, 0x7f0600a1

    .line 226
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEACTIVE_RESCODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, resCode:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 228
    sparse-switch v0, :sswitch_data_0

    .line 240
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Landroid/app/Activity;

    move-result-object v2

    .line 241
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    #calls: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->buildMsgDialog(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$1(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
    invoke-static {v1}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$2(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->queryCloudStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->setActiveViewSwitch(Z)V

    .line 250
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 251
    return-void

    .line 230
    :sswitch_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Landroid/app/Activity;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    #calls: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->buildMsgDialog(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$1(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :sswitch_1
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
    invoke-static {v1}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$2(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->setCloudStatusClose()Z

    .line 236
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Landroid/app/Activity;

    move-result-object v1

    .line 237
    const v2, 0x7f0600a9

    .line 236
    invoke-static {v1, v2}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->setActiveViewSwitch(Z)V

    goto :goto_1

    .line 228
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

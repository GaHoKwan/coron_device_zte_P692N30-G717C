.class Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;
.super Landroid/os/Handler;
.source "RetrieveMasterControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$0(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->queryCloudStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->setActiveViewSwitch(Z)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->setActiveViewSwitch(Z)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    const v2, 0x7f0600b8

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->showUidNullDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$1;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->showUpdateDialog()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

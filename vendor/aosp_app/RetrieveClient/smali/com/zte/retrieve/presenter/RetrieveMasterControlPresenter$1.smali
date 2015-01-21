.class Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;
.super Landroid/os/Handler;
.source "RetrieveMasterControlPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 52
    const-string v2, "VERSION_INFO"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    #setter for: Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->verProp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->access$0(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    const-string v2, "updateURL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    #setter for: Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->updateUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->access$1(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "verPro="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->verProp:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->access$2(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveMasterControlView;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v1, v1, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0600c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->verProp:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->access$2(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v3, v3, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    .line 61
    invoke-interface {v0, v1, v2, v3}, Lcom/zte/retrieve/iview/IRetrieveMasterControlView;->showUpdatePromptDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 64
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v1, v1, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v2, v2, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 66
    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getCurrentTime()J

    move-result-wide v2

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/retrieve/controller/Controller;->setLastUpdateCheckTime(Landroid/content/Context;J)Z

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

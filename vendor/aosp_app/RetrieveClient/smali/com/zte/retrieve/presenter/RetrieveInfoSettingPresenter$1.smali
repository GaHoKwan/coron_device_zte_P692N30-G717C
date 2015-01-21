.class Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;
.super Landroid/os/Handler;
.source "RetrieveInfoSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x3

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    .line 59
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 60
    const-string v2, "VERSION_INFO"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    #setter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->verProp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$0(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    .line 62
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    const-string v2, "updateURL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    #setter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->updateUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$1(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "verPro="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->verProp:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$2(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v1, v1, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0600c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->verProp:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$2(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v3, v3, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    .line 67
    invoke-interface {v0, v1, v2, v3}, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;->showUpdatePromptDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 71
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v1, v1, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    .line 72
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v2, v2, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 73
    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getCurrentTime()J

    move-result-wide v2

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/retrieve/controller/Controller;->setLastUpdateCheckTime(Landroid/content/Context;J)Z

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->isSettingDestroy:Z
    invoke-static {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$3(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$4(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$4(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Landroid/os/Handler;

    move-result-object v0

    .line 83
    const-wide/16 v1, 0x2710

    .line 82
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #calls: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->getTopActivity()Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$5(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "com.zte.retrieve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #calls: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->getTopActivity()Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$5(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "org.zx.AuthComp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isPickingContack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setFromRecentapps(Z)V

    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

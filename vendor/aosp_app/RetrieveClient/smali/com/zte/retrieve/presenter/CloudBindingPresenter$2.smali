.class Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;
.super Landroid/os/Handler;
.source "CloudBindingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/CloudBindingPresenter;->createBindingHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, strErrorMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strError="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 187
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 197
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    #calls: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->promptBindingResult(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$6(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->displayBindingResultView()V

    .line 201
    :goto_0
    return-void

    .line 190
    :sswitch_0
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->userinfo:Lcom/zte/retrieve/cloud/UserInfo;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$0(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Lcom/zte/retrieve/cloud/UserInfo;

    move-result-object v2

    #calls: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->handleCloudActiveSuccess(Lcom/zte/retrieve/cloud/UserInfo;)V
    invoke-static {v1, v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$4(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Lcom/zte/retrieve/cloud/UserInfo;)V

    goto :goto_0

    .line 193
    :sswitch_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v2, v2, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v3, v3, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f0600ba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    #calls: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->showNetErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$5(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x3 -> :sswitch_1
    .end sparse-switch
.end method

.class Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;
.super Lcom/zte/retrieve/cloud/account/AliveWithUIThread;
.source "CloudBindingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/CloudBindingPresenter;->bindPhone()V
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
    iput-object p1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    .line 93
    invoke-direct {p0}, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x7f0600a6

    const/4 v4, -0x3

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZY UID ID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->userinfo:Lcom/zte/retrieve/cloud/UserInfo;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$0(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Lcom/zte/retrieve/cloud/UserInfo;

    move-result-object v2

    #calls: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->bind(Lcom/zte/retrieve/cloud/UserInfo;)I
    invoke-static {v1, v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$1(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Lcom/zte/retrieve/cloud/UserInfo;)I

    move-result v0

    .line 98
    .local v0, status:I
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->dismissProgressDialog()V

    .line 99
    sparse-switch v0, :sswitch_data_0

    .line 116
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mLoginHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$2(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Landroid/os/Handler;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v3, v3, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    #calls: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->sendMsg(Landroid/os/Handler;ILjava/lang/String;)V
    invoke-static {v1, v2, v4, v3}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$3(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Landroid/os/Handler;ILjava/lang/String;)V

    .line 120
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 121
    return-void

    .line 102
    :sswitch_0
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mLoginHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$2(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, -0x11

    .line 103
    iget-object v4, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v4, v4, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0600b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    #calls: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->sendMsg(Landroid/os/Handler;ILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$3(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0

    .line 108
    :sswitch_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mLoginHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$2(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, -0xc

    .line 109
    iget-object v4, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v4, v4, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0600ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    #calls: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->sendMsg(Landroid/os/Handler;ILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$3(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0

    .line 112
    :sswitch_2
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mLoginHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$2(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Landroid/os/Handler;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iget-object v3, v3, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    #calls: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->sendMsg(Landroid/os/Handler;ILjava/lang/String;)V
    invoke-static {v1, v2, v4, v3}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$3(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x191 -> :sswitch_0
        0x1c4 -> :sswitch_1
    .end sparse-switch
.end method

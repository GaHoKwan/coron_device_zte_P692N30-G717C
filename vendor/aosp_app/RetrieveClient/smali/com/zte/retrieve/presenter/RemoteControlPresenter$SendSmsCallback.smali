.class Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;
.super Ljava/lang/Object;
.source "RemoteControlPresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/presenter/RemoteControlPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendSmsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RemoteControlPresenter;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/presenter/RemoteControlPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;->this$0:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/presenter/RemoteControlPresenter;Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;-><init>(Lcom/zte/retrieve/presenter/RemoteControlPresenter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 237
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 238
    .local v0, orderType:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 239
    .local v1, resultCode:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------mServiceReceiver receive orderType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;->this$0:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    iget-object v2, v2, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v2, Lcom/zte/retrieve/iview/IRemoteControlView;

    invoke-interface {v2, v0, v1}, Lcom/zte/retrieve/iview/IRemoteControlView;->showSendResWindow(II)V

    .line 241
    packed-switch v1, :pswitch_data_0

    .line 254
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;->this$0:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RemoteControlPresenter;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->access$0(Lcom/zte/retrieve/presenter/RemoteControlPresenter;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 255
    const/4 v2, 0x1

    return v2

    .line 243
    :pswitch_1
    const-string v2, "RemoteControlPresenter sms send success"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_2
    const-string v2, "RemoteControlPresenter sms send failed"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

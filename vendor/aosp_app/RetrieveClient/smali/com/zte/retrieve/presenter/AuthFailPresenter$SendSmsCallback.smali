.class Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;
.super Ljava/lang/Object;
.source "AuthFailPresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/presenter/AuthFailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendSmsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/AuthFailPresenter;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/presenter/AuthFailPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;->this$0:Lcom/zte/retrieve/presenter/AuthFailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/presenter/AuthFailPresenter;Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;-><init>(Lcom/zte/retrieve/presenter/AuthFailPresenter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 58
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 59
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 60
    .local v0, resultCode:I
    packed-switch v0, :pswitch_data_0

    .line 70
    const-string v1, "AuthFailPresenter sms send failed"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;->this$0:Lcom/zte/retrieve/presenter/AuthFailPresenter;

    iget-object v1, v1, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f060061

    invoke-static {v1, v2}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 75
    .end local v0           #resultCode:I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 62
    .restart local v0       #resultCode:I
    :pswitch_0
    const-string v1, "AuthFailPresenter sms send success"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;->this$0:Lcom/zte/retrieve/presenter/AuthFailPresenter;

    iget-object v1, v1, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f060085

    invoke-static {v1, v2}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

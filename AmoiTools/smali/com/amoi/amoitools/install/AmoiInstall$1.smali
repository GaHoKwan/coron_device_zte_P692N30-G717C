.class Lcom/amoi/amoitools/install/AmoiInstall$1;
.super Landroid/os/Handler;
.source "AmoiInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/amoitools/install/AmoiInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/amoitools/install/AmoiInstall;


# direct methods
.method constructor <init>(Lcom/amoi/amoitools/install/AmoiInstall;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amoi/amoitools/install/AmoiInstall$1;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall$1;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->installResult(I)V
    invoke-static {v0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->access$000(Lcom/amoi/amoitools/install/AmoiInstall;I)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall$1;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V
    invoke-static {v0, v3}, Lcom/amoi/amoitools/install/AmoiInstall;->access$100(Lcom/amoi/amoitools/install/AmoiInstall;Z)V

    .line 84
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall$1;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->cancelProgressDialog()V
    invoke-static {v0}, Lcom/amoi/amoitools/install/AmoiInstall;->access$200(Lcom/amoi/amoitools/install/AmoiInstall;)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall$1;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    const v1, 0x7f040015

    const v2, 0x7f040003

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->showProgressDialog(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/amoi/amoitools/install/AmoiInstall;->access$300(Lcom/amoi/amoitools/install/AmoiInstall;III)V

    .line 89
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall$1;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    const/4 v1, 0x1

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V
    invoke-static {v0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->access$100(Lcom/amoi/amoitools/install/AmoiInstall;Z)V

    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall$1;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V
    invoke-static {v0, v3}, Lcom/amoi/amoitools/install/AmoiInstall;->access$100(Lcom/amoi/amoitools/install/AmoiInstall;Z)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/zte/heartyservice/common/datatype/NewDialog$1;
.super Landroid/os/Handler;
.source "NewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/NewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/datatype/NewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$1;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$1;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$100(Lcom/zte/heartyservice/common/datatype/NewDialog;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$1;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$1;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I
    invoke-static {v2}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$000(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;->doWhenMinusOneSeconds(Lcom/zte/heartyservice/common/datatype/NewDialog;I)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$1;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$100(Lcom/zte/heartyservice/common/datatype/NewDialog;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$1;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;->doWhenTimeOut(Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

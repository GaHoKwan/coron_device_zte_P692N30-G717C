.class Lcom/zte/heartyservice/common/ui/FloatFrame$1;
.super Landroid/os/Handler;
.source "FloatFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/ui/FloatFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/ui/FloatFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$1;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    return-void

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$1;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    #calls: Lcom/zte/heartyservice/common/ui/FloatFrame;->updateViewPosition()V
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/FloatFrame;->access$000(Lcom/zte/heartyservice/common/ui/FloatFrame;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

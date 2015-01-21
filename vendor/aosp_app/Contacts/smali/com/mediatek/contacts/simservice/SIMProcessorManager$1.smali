.class Lcom/mediatek/contacts/simservice/SIMProcessorManager$1;
.super Landroid/os/Handler;
.source "SIMProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/simservice/SIMProcessorManager;-><init>(Landroid/content/Context;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/simservice/SIMProcessorManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$1;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const-string v0, "SIMProcessorManager"

    const-string v1, "handleMessage MSG_SEND_STOP_SERVICE"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorManager$1;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    #calls: Lcom/mediatek/contacts/simservice/SIMProcessorManager;->callStopService()V
    invoke-static {v0}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->access$000(Lcom/mediatek/contacts/simservice/SIMProcessorManager;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

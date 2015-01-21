.class Lcom/mediatek/bluetooth/map/EmailController$1;
.super Landroid/os/Handler;
.source "EmailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/EmailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/EmailController;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/EmailController;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/EmailController$1;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController$1;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->access$000(Lcom/mediatek/bluetooth/map/EmailController;Ljava/lang/String;)V

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 207
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EmailController$1;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    const-string v1, "unexpected message is received"

    #calls: Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/EmailController;->access$000(Lcom/mediatek/bluetooth/map/EmailController;Ljava/lang/String;)V

    .line 209
    :pswitch_0
    return-void

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy$1;
.super Landroid/os/Handler;
.source "OP09NetworkSelectionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;


# direct methods
.method constructor <init>(Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy$1;->this$0:Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy$1;->this$0:Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should never run into this case: msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy$1;->this$0:Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;

    #calls: Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->handleGsm2CallEnd()V
    invoke-static {v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->access$000(Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

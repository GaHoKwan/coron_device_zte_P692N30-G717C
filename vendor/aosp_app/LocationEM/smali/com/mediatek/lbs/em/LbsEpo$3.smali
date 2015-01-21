.class Lcom/mediatek/lbs/em/LbsEpo$3;
.super Landroid/os/Handler;
.source "LbsEpo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsEpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bundle:Landroid/os/Bundle;

.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsEpo;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsEpo;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsEpo$3;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 201
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo$3;->bundle:Landroid/os/Bundle;

    .line 202
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo$3;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo$3;->bundle:Landroid/os/Bundle;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo$3;->text:Ljava/lang/String;

    .line 205
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo$3;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    const-string v1, "WARNING: unknown message recv"

    #calls: Lcom/mediatek/lbs/em/LbsEpo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsEpo;->access$300(Lcom/mediatek/lbs/em/LbsEpo;Ljava/lang/String;)V

    .line 216
    :goto_0
    :pswitch_0
    return-void

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo$3;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    #calls: Lcom/mediatek/lbs/em/LbsEpo;->enableWidgetAfterStress()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsEpo;->access$400(Lcom/mediatek/lbs/em/LbsEpo;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

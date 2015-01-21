.class Lcom/mediatek/lbs/em/LbsGps$12;
.super Landroid/os/Handler;
.source "LbsGps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsGps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 606
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const-string v1, "WARNING: unknown handle event recv!!"

    #calls: Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsGps;->access$2300(Lcom/mediatek/lbs/em/LbsGps;Ljava/lang/String;)V

    .line 609
    :goto_0
    return-void

    .line 587
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mTextViewTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$3800(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 590
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->enableWidgetAfterStress()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$3900(Lcom/mediatek/lbs/em/LbsGps;)V

    goto :goto_0

    .line 593
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mTextViewLoop:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$4000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current loop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 596
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->startGps()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$300(Lcom/mediatek/lbs/em/LbsGps;)V

    goto :goto_0

    .line 599
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->stopGps()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$400(Lcom/mediatek/lbs/em/LbsGps;)V

    goto :goto_0

    .line 602
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->startDeletingAidingData()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$500(Lcom/mediatek/lbs/em/LbsGps;)V

    .line 603
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$12;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->resetVarialbe()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$700(Lcom/mediatek/lbs/em/LbsGps;)V

    goto :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

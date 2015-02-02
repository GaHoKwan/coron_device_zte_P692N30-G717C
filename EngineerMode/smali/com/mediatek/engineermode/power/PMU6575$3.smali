.class Lcom/mediatek/engineermode/power/PMU6575$3;
.super Landroid/os/Handler;
.source "PMU6575.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/power/PMU6575;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/power/PMU6575;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/power/PMU6575;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/mediatek/engineermode/power/PMU6575$3;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 359
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 361
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 362
    .local v0, b:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mediatek/engineermode/power/PMU6575$3;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #getter for: Lcom/mediatek/engineermode/power/PMU6575;->mInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/engineermode/power/PMU6575;->access$300(Lcom/mediatek/engineermode/power/PMU6575;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "INFO"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

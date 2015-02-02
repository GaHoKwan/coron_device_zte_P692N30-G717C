.class Lcom/mediatek/engineermode/power/ChargeBattery$1;
.super Landroid/os/Handler;
.source "ChargeBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/power/ChargeBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/power/ChargeBattery;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/power/ChargeBattery;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/engineermode/power/ChargeBattery$1;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 113
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, b:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mediatek/engineermode/power/ChargeBattery$1;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$000(Lcom/mediatek/engineermode/power/ChargeBattery;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "INFO"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

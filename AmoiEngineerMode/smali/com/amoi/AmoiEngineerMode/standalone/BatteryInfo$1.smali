.class Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;
.super Landroid/os/Handler;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x8

    .line 44
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mDoul_battery:Z
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$000(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$200(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoString:Ljava/lang/String;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$100(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfoTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$200(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->mOtherInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$300(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->tv_battery:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$500(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->battery:Ljava/lang/String;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$400(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->tv_batteryStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$700(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->statusString:Ljava/lang/String;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;->access$600(Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

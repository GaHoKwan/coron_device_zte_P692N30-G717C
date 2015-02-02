.class Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;
.super Landroid/os/Handler;
.source "BatteryBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x8

    .line 64
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mDoul_battery:Z
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoString:Ljava/lang/String;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$100(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfoTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->mOtherInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$300(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->tv_battery:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$500(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->battery:Ljava/lang/String;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$400(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->tv_batteryStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$700(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/BatteryBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->statusString:Ljava/lang/String;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->access$600(Lcom/amoi/AmoiEngineerMode/base/BatteryBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

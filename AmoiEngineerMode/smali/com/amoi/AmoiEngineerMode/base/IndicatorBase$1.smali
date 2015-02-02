.class Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;
.super Landroid/os/Handler;
.source "IndicatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    iget v1, v1, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->count:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->MarqueeON(I)V

    .line 83
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    iget v1, v0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->count:I

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/red/brightness"

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    iget-boolean v2, v2, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->isON:Z

    invoke-virtual {v0, v1, v2}, Lcom/amoi/AmoiEngineerMode/util/LightController;->isShowLED(Ljava/lang/String;Z)V

    .line 88
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;

    iget-boolean v0, v0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->isON:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->isON:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

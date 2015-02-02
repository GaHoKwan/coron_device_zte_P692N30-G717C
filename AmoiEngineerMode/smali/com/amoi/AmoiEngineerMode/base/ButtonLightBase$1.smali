.class Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$1;
.super Landroid/os/Handler;
.source "ButtonLightBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/button-backlight/brightness"

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->backlightOn:Z
    invoke-static {v2}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amoi/AmoiEngineerMode/util/LightController;->isShowLED(Ljava/lang/String;Z)V

    .line 61
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;

    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->backlightOn:Z
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    #setter for: Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->backlightOn:Z
    invoke-static {v1, v0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->access$002(Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

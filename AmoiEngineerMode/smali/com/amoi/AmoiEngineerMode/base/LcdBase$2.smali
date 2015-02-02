.class Lcom/amoi/AmoiEngineerMode/base/LcdBase$2;
.super Landroid/os/Handler;
.source "LcdBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/LcdBase;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/LcdBase;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->changeColor()V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/amoi/AmoiEngineerMode/base/DoulMicBase$1;
.super Landroid/os/Handler;
.source "DoulMicBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->inithandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;

    #calls: Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->onStartTest()V
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

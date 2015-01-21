.class Lcom/zte/engineer/BacklightTest$1;
.super Landroid/os/Handler;
.source "BacklightTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/BacklightTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BacklightTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BacklightTest;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zte/engineer/BacklightTest$1;->this$0:Lcom/zte/engineer/BacklightTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest$1;->this$0:Lcom/zte/engineer/BacklightTest;

    #calls: Lcom/zte/engineer/BacklightTest;->changeBrightness()V
    invoke-static {v0}, Lcom/zte/engineer/BacklightTest;->access$000(Lcom/zte/engineer/BacklightTest;)V

    .line 105
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest$1;->this$0:Lcom/zte/engineer/BacklightTest;

    #calls: Lcom/zte/engineer/BacklightTest;->KeyLightOnOff()V
    invoke-static {v0}, Lcom/zte/engineer/BacklightTest;->access$100(Lcom/zte/engineer/BacklightTest;)V

    .line 106
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

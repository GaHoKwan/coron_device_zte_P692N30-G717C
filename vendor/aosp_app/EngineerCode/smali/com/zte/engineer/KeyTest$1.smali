.class Lcom/zte/engineer/KeyTest$1;
.super Landroid/os/Handler;
.source "KeyTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/KeyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/KeyTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/KeyTest;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/zte/engineer/KeyTest$1;->this$0:Lcom/zte/engineer/KeyTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/zte/engineer/KeyTest$1;->this$0:Lcom/zte/engineer/KeyTest;

    #calls: Lcom/zte/engineer/KeyTest;->changeVibratorLedStatus()V
    invoke-static {v0}, Lcom/zte/engineer/KeyTest;->access$000(Lcom/zte/engineer/KeyTest;)V

    .line 91
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

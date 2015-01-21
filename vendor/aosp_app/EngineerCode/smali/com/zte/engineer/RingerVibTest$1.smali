.class Lcom/zte/engineer/RingerVibTest$1;
.super Landroid/os/Handler;
.source "RingerVibTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/RingerVibTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/RingerVibTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/RingerVibTest;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/zte/engineer/RingerVibTest$1;->this$0:Lcom/zte/engineer/RingerVibTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/zte/engineer/RingerVibTest$1;->this$0:Lcom/zte/engineer/RingerVibTest;

    #calls: Lcom/zte/engineer/RingerVibTest;->changeVibratorLedStatus()V
    invoke-static {v0}, Lcom/zte/engineer/RingerVibTest;->access$000(Lcom/zte/engineer/RingerVibTest;)V

    .line 127
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

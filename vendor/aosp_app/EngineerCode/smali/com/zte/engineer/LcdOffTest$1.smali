.class Lcom/zte/engineer/LcdOffTest$1;
.super Landroid/os/Handler;
.source "LcdOffTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/LcdOffTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/LcdOffTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/LcdOffTest;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zte/engineer/LcdOffTest$1;->this$0:Lcom/zte/engineer/LcdOffTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 34
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/zte/engineer/LcdOffTest$1;->this$0:Lcom/zte/engineer/LcdOffTest;

    const/4 v1, 0x1

    #calls: Lcom/zte/engineer/LcdOffTest;->finishSelf(Z)V
    invoke-static {v0, v1}, Lcom/zte/engineer/LcdOffTest;->access$000(Lcom/zte/engineer/LcdOffTest;Z)V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

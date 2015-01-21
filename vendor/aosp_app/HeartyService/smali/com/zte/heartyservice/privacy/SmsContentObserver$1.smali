.class Lcom/zte/heartyservice/privacy/SmsContentObserver$1;
.super Landroid/os/Handler;
.source "SmsContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/SmsContentObserver;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/SmsContentObserver;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/SmsContentObserver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/SmsContentObserver$1;->this$0:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsContentObserver$1;->this$0:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    #getter for: Lcom/zte/heartyservice/privacy/SmsContentObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsContentObserver;->access$000(Lcom/zte/heartyservice/privacy/SmsContentObserver;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsContentObserver$1;->this$0:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/SmsContentObserver;->onChange(Z)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

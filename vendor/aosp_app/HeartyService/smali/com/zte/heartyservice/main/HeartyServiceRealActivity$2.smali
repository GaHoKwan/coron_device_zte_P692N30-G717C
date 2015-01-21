.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$2;
.super Landroid/os/Handler;
.source "HeartyServiceRealActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceRealActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 291
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #calls: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation1()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$300(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #calls: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startRotateAnimation()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$500(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #calls: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation2()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$400(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

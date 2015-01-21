.class Leu/chainfire/supersu/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leu/chainfire/supersu/AsyncTask$InternalHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;

    move-object v3, v0

    .line 501
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 504
    :pswitch_0
    iget-object v0, v3, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;->鷭:Leu/chainfire/supersu/AsyncTask;

    iget-object v1, v3, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;->櫯:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Leu/chainfire/supersu/AsyncTask;->鷭(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)V

    .line 505
    :goto_0
    :pswitch_1
    return-void
.end method

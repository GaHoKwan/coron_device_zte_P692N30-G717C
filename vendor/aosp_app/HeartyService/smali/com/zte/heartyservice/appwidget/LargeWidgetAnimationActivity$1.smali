.class Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;
.super Landroid/os/Handler;
.source "LargeWidgetAnimationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;

    #calls: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->showAnimation()V
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->access$000(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;)V

    goto :goto_0

    .line 76
    :pswitch_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 79
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;->removeMessages(I)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;->removeMessages(I)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->finish()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

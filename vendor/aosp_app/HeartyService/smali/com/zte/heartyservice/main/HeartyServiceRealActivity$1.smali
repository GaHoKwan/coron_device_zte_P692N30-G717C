.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;
.super Ljava/lang/Object;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 254
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4120

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_0
    :pswitch_0
    return v2

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    const/high16 v1, -0x4080

    #setter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$102(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;F)F

    .line 259
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #setter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z
    invoke-static {v0, v5}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$202(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Z)Z

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #setter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z
    invoke-static {v0, v5}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$202(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Z)Z

    goto :goto_0

    .line 267
    :pswitch_3
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$100(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F
    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$100(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$200(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #setter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z
    invoke-static {v0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$202(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Z)Z

    .line 270
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #calls: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation1()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$300(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    .line 275
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$102(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;F)F

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$100(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$100(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$200(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #setter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z
    invoke-static {v0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$202(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Z)Z

    .line 273
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #calls: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation2()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$400(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    goto :goto_1

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

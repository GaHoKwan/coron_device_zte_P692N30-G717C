.class Lcom/zte/heartyservice/floater/BackgroundService$5;
.super Ljava/lang/Object;
.source "BackgroundService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/BackgroundService;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/BackgroundService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/BackgroundService;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v6, 0x1000

    const/high16 v5, 0x4170

    const/high16 v3, -0x3e90

    const/4 v4, 0x0

    .line 301
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$400(Lcom/zte/heartyservice/floater/BackgroundService;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getFloaterFix()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    :goto_0
    return v4

    .line 305
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 308
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->mTouchStartX:F
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$502(Lcom/zte/heartyservice/floater/BackgroundService;F)F

    .line 309
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->mTouchStartY:F
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$602(Lcom/zte/heartyservice/floater/BackgroundService;F)F

    .line 310
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->xDownInScreen:F
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$702(Lcom/zte/heartyservice/floater/BackgroundService;F)F

    .line 311
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #calls: Lcom/zte/heartyservice/floater/BackgroundService;->getStatusBarHeight()I
    invoke-static {v3}, Lcom/zte/heartyservice/floater/BackgroundService;->access$900(Lcom/zte/heartyservice/floater/BackgroundService;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->yDownInScreen:F
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$802(Lcom/zte/heartyservice/floater/BackgroundService;F)F

    .line 312
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->x:F
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1002(Lcom/zte/heartyservice/floater/BackgroundService;F)F

    .line 313
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #calls: Lcom/zte/heartyservice/floater/BackgroundService;->getStatusBarHeight()I
    invoke-static {v3}, Lcom/zte/heartyservice/floater/BackgroundService;->access$900(Lcom/zte/heartyservice/floater/BackgroundService;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->y:F
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1102(Lcom/zte/heartyservice/floater/BackgroundService;F)F

    goto :goto_0

    .line 319
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v3, v3, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->x:F
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1002(Lcom/zte/heartyservice/floater/BackgroundService;F)F

    .line 320
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #calls: Lcom/zte/heartyservice/floater/BackgroundService;->getStatusBarHeight()I
    invoke-static {v3}, Lcom/zte/heartyservice/floater/BackgroundService;->access$900(Lcom/zte/heartyservice/floater/BackgroundService;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->y:F
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1102(Lcom/zte/heartyservice/floater/BackgroundService;F)F

    .line 321
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #calls: Lcom/zte/heartyservice/floater/BackgroundService;->updateViewPosition()V
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1200(Lcom/zte/heartyservice/floater/BackgroundService;)V

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #calls: Lcom/zte/heartyservice/floater/BackgroundService;->saveViewPosition()V
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1300(Lcom/zte/heartyservice/floater/BackgroundService;)V

    .line 326
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->xDownInScreen:F
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$700(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->x:F
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1000(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->xDownInScreen:F
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$700(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->x:F
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1000(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->yDownInScreen:F
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$800(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->y:F
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1100(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->yDownInScreen:F
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$800(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->y:F
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1100(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const-class v2, Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/floater/BackgroundService;->startActivity(Landroid/content/Intent;)V

    .line 331
    const-string v1, "NetMonitor"

    const-string v2, "go to detail window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iput-boolean v4, v1, Lcom/zte/heartyservice/floater/BackgroundService;->ismove:Z

    goto/16 :goto_0

    .line 334
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->xDownInScreen:F
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$700(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->x:F
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1000(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->yDownInScreen:F
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$800(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->y:F
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$1100(Lcom/zte/heartyservice/floater/BackgroundService;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const-class v2, Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 338
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/floater/BackgroundService;->startActivity(Landroid/content/Intent;)V

    .line 340
    const-string v1, "NetMonitor"

    const-string v2, "go to xx detail window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iput-boolean v4, v1, Lcom/zte/heartyservice/floater/BackgroundService;->ismove:Z

    goto/16 :goto_0

    .line 345
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$5;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/zte/heartyservice/floater/BackgroundService;->ismove:Z

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

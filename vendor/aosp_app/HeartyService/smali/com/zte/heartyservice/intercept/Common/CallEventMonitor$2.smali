.class Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;
.super Ljava/lang/Object;
.source "CallEventMonitor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->showReal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mTouchStartX:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$602(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F

    .line 265
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mTouchStartY:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$702(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F

    .line 266
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mInScreenX:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$802(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F

    .line 267
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mInScreenY:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$902(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mInScreenX:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$802(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F

    .line 271
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mInScreenY:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$902(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F

    .line 273
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #calls: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->updateViewPosition()V
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$1000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mSp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$1200(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "call_location_floater_x"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$1100(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "call_location_floater_y"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$1100(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

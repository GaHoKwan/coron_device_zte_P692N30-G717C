.class Lcom/hf/UI/CityActivity$7;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->initResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    const-string v0, "touch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 531
    :cond_0
    :goto_0
    return v3

    .line 506
    :pswitch_0
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefCityTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$15(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 507
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefTemTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$16(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 508
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefWindTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$17(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefCityTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$15(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 513
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefTemTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$16(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 514
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefWindTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$17(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    .line 522
    :pswitch_2
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$18(Lcom/hf/UI/CityActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefCityTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$15(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 525
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefTemTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$16(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 526
    iget-object v0, p0, Lcom/hf/UI/CityActivity$7;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mDefWindTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$17(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

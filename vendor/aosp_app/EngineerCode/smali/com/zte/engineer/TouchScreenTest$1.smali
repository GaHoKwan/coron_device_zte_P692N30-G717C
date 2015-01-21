.class Lcom/zte/engineer/TouchScreenTest$1;
.super Landroid/content/BroadcastReceiver;
.source "TouchScreenTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/TouchScreenTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/TouchScreenTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/TouchScreenTest;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenTest$1;->this$0:Lcom/zte/engineer/TouchScreenTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 35
    const-string v0, "MainActivity"

    const-string v1, "________receive broadcast."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x1

    const-string v1, "TestPass"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenTest$1;->this$0:Lcom/zte/engineer/TouchScreenTest;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenTest;->mCircleView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenTest$1;->this$0:Lcom/zte/engineer/TouchScreenTest;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenTest;->mRectangleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x2

    const-string v1, "TestPass"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenTest$1;->this$0:Lcom/zte/engineer/TouchScreenTest;

    #calls: Lcom/zte/engineer/TouchScreenTest;->doFinish()V
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenTest;->access$000(Lcom/zte/engineer/TouchScreenTest;)V

    goto :goto_0
.end method

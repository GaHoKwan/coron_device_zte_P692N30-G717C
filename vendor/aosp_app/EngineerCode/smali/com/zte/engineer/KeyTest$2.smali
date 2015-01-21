.class Lcom/zte/engineer/KeyTest$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/KeyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/KeyTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/KeyTest;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/zte/engineer/KeyTest$2;->this$0:Lcom/zte/engineer/KeyTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 341
    const-string v0, "com.zte.engineer.NaviKeyTest"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "KeyTest"

    const-string v1, "onReceive: bt turn on!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/zte/engineer/KeyTest$2;->this$0:Lcom/zte/engineer/KeyTest;

    iput-boolean v2, v0, Lcom/zte/engineer/KeyTest;->navikey:Z

    .line 345
    iget-object v0, p0, Lcom/zte/engineer/KeyTest$2;->this$0:Lcom/zte/engineer/KeyTest;

    iget-object v0, v0, Lcom/zte/engineer/KeyTest;->manager:Lcom/zte/engineer/KeyTest$keyTestManager;

    invoke-virtual {v0}, Lcom/zte/engineer/KeyTest$keyTestManager;->getRemainnings()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/zte/engineer/KeyTest$2;->this$0:Lcom/zte/engineer/KeyTest;

    iget-object v0, v0, Lcom/zte/engineer/KeyTest;->manager:Lcom/zte/engineer/KeyTest$keyTestManager;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/zte/engineer/KeyTest$keyTestManager;->remove(I)V

    .line 348
    iget-object v0, p0, Lcom/zte/engineer/KeyTest$2;->this$0:Lcom/zte/engineer/KeyTest;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 351
    :cond_0
    return-void
.end method

.class Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;
.super Ljava/lang/Object;
.source "HeartServiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartServiceActivity$1;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/main/HeartServiceActivity$1;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartServiceActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;->this$1:Lcom/zte/heartyservice/main/HeartServiceActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, 0x1

    .line 29
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isFirstStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;->this$1:Lcom/zte/heartyservice/main/HeartServiceActivity$1;

    iget-object v1, v1, Lcom/zte/heartyservice/main/HeartServiceActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartServiceActivity;

    const-class v2, Lcom/zte/heartyservice/main/FrontCover;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;->this$1:Lcom/zte/heartyservice/main/HeartServiceActivity$1;

    iget-object v1, v1, Lcom/zte/heartyservice/main/HeartServiceActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartServiceActivity;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;->this$1:Lcom/zte/heartyservice/main/HeartServiceActivity$1;

    iget-object v1, v1, Lcom/zte/heartyservice/main/HeartServiceActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartServiceActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartServiceActivity;->finish()V

    .line 45
    return-void

    .line 36
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;->this$1:Lcom/zte/heartyservice/main/HeartServiceActivity$1;

    iget-object v1, v1, Lcom/zte/heartyservice/main/HeartServiceActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartServiceActivity;

    const-class v2, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;->this$1:Lcom/zte/heartyservice/main/HeartServiceActivity$1;

    iget-object v1, v1, Lcom/zte/heartyservice/main/HeartServiceActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartServiceActivity;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartServiceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

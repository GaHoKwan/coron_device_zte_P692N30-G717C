.class Lcom/zte/heartyservice/main/HeartServiceActivity$1;
.super Ljava/lang/Object;
.source "HeartServiceActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartServiceActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartServiceActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartServiceActivity$1;->this$0:Lcom/zte/heartyservice/main/HeartServiceActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartServiceActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartServiceActivity;->access$000(Lcom/zte/heartyservice/main/HeartServiceActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/main/HeartServiceActivity$1$1;-><init>(Lcom/zte/heartyservice/main/HeartServiceActivity$1;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    const/4 v0, 0x0

    return v0
.end method

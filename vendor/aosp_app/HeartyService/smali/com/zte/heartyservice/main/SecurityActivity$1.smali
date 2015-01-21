.class Lcom/zte/heartyservice/main/SecurityActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SecurityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/SecurityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/SecurityActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/SecurityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zte/heartyservice/main/SecurityActivity$1;->this$0:Lcom/zte/heartyservice/main/SecurityActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.zte.heartyservice.intent.action.REFRESH_SECURITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, from:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/main/SecurityActivity$1;->this$0:Lcom/zte/heartyservice/main/SecurityActivity;

    invoke-virtual {v1, p2, v0}, Lcom/zte/heartyservice/main/SecurityActivity;->updateSafityIndicator(Landroid/content/Intent;Ljava/lang/String;)V

    .line 96
    .end local v0           #from:Ljava/lang/String;
    :cond_0
    return-void
.end method

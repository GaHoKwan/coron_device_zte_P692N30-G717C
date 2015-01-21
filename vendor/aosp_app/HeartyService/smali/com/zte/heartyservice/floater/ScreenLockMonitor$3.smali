.class Lcom/zte/heartyservice/floater/ScreenLockMonitor$3;
.super Ljava/lang/Object;
.source "ScreenLockMonitor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/ScreenLockMonitor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$3;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$3;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    const-class v2, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$3;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->startActivity(Landroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$3;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-virtual {v1}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->finish()V

    .line 135
    return-void
.end method

.class Lcom/zte/heartyservice/floater/DetailNetMonitor$2;
.super Ljava/lang/Object;
.source "DetailNetMonitor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/DetailNetMonitor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$2;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$2;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$2;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    const-class v3, Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->stopService(Landroid/content/Intent;)Z

    .line 88
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$2;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/floater/DetailNetMonitor;->isRun:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->access$002(Lcom/zte/heartyservice/floater/DetailNetMonitor;Z)Z

    .line 89
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$2;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-virtual {v0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->finish()V

    .line 90
    return-void
.end method

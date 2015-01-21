.class Lcom/zte/heartyservice/floater/BackgroundService$2;
.super Ljava/lang/Object;
.source "BackgroundService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/BackgroundService;->onCreate()V
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
    .line 119
    iput-object p1, p0, Lcom/zte/heartyservice/floater/BackgroundService$2;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$2;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-boolean v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->ismove:Z

    if-nez v1, :cond_0

    .line 124
    const-string v1, "NetMonitor"

    const-string v2, "send intent=========xxx=============="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$2;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const-class v2, Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$2;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/floater/BackgroundService;->startActivity(Landroid/content/Intent;)V

    .line 129
    const-string v1, "NetMonitor"

    const-string v2, "go to detail xx window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$2;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/zte/heartyservice/floater/BackgroundService;->ismove:Z

    .line 133
    return-void
.end method

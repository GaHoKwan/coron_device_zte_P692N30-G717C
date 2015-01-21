.class Lcom/zte/heartyservice/floater/DetailNetMonitor$3;
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
    .line 96
    iput-object p1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$3;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$3;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/floater/DetailNetMonitor;->isRun:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->access$002(Lcom/zte/heartyservice/floater/DetailNetMonitor;Z)Z

    .line 99
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$3;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-virtual {v0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->finish()V

    .line 100
    return-void
.end method

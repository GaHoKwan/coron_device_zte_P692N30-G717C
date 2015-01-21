.class Lcom/zte/update/ui/pop/ActionWithPop$1;
.super Lcom/zte/update/ui/pop/DataNetworkAlertPop;
.source "ActionWithPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/pop/ActionWithPop;->showDataNetworkAlertPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/pop/ActionWithPop;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/pop/ActionWithPop;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zte/update/ui/pop/ActionWithPop$1;->this$0:Lcom/zte/update/ui/pop/ActionWithPop;

    invoke-direct {p0, p2}, Lcom/zte/update/ui/pop/DataNetworkAlertPop;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/update/ui/pop/ActionWithPop$1;->this$0:Lcom/zte/update/ui/pop/ActionWithPop;

    invoke-virtual {v0}, Lcom/zte/update/ui/pop/ActionWithPop;->action()V

    .line 34
    return-void
.end method

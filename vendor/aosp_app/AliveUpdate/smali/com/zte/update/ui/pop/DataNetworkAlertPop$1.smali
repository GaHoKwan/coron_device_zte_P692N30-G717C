.class Lcom/zte/update/ui/pop/DataNetworkAlertPop$1;
.super Ljava/lang/Object;
.source "DataNetworkAlertPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/pop/DataNetworkAlertPop;->initCancelAndWifiButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/pop/DataNetworkAlertPop;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/pop/DataNetworkAlertPop;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zte/update/ui/pop/DataNetworkAlertPop$1;->this$0:Lcom/zte/update/ui/pop/DataNetworkAlertPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/update/ui/pop/DataNetworkAlertPop$1;->this$0:Lcom/zte/update/ui/pop/DataNetworkAlertPop;

    invoke-virtual {v0}, Lcom/zte/update/ui/pop/DataNetworkAlertPop;->action()V

    .line 29
    iget-object v0, p0, Lcom/zte/update/ui/pop/DataNetworkAlertPop$1;->this$0:Lcom/zte/update/ui/pop/DataNetworkAlertPop;

    invoke-virtual {v0}, Lcom/zte/update/ui/pop/DataNetworkAlertPop;->dismiss()V

    .line 32
    return-void
.end method

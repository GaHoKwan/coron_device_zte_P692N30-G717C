.class Lcom/zte/update/ui/pop/NetworkAlertPop$1;
.super Ljava/lang/Object;
.source "NetworkAlertPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/pop/NetworkAlertPop;->initCancelAndWifiButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/pop/NetworkAlertPop;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/pop/NetworkAlertPop;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/update/ui/pop/NetworkAlertPop$1;->this$0:Lcom/zte/update/ui/pop/NetworkAlertPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/update/ui/pop/NetworkAlertPop$1;->this$0:Lcom/zte/update/ui/pop/NetworkAlertPop;

    invoke-virtual {v0}, Lcom/zte/update/ui/pop/NetworkAlertPop;->dismiss()V

    .line 31
    return-void
.end method
.class Lcom/zte/heartyservice/net/OverLimitAlert$2;
.super Ljava/lang/Object;
.source "OverLimitAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/OverLimitAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/OverLimitAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/OverLimitAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/heartyservice/net/OverLimitAlert$2;->this$0:Lcom/zte/heartyservice/net/OverLimitAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v1, p0, Lcom/zte/heartyservice/net/OverLimitAlert$2;->this$0:Lcom/zte/heartyservice/net/OverLimitAlert;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, localSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;->setNetdate(I)V

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 83
    iget-object v1, p0, Lcom/zte/heartyservice/net/OverLimitAlert$2;->this$0:Lcom/zte/heartyservice/net/OverLimitAlert;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/OverLimitAlert;->finish()V

    .line 84
    return-void
.end method

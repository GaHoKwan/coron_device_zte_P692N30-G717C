.class Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert$2;
.super Ljava/lang/Object;
.source "OverLimitIdleHoursAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert$2;->this$0:Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 51
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v1, p0, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert$2;->this$0:Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, localSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;->setNetdate(I)V

    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    iget-object v1, p0, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert$2;->this$0:Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->finish()V

    .line 55
    return-void
.end method

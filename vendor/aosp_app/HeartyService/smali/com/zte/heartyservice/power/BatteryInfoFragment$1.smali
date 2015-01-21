.class Lcom/zte/heartyservice/power/BatteryInfoFragment$1;
.super Ljava/lang/Object;
.source "BatteryInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/BatteryInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$1;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 258
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->getSmartBatteryManagerVersion()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$1;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #calls: Lcom/zte/heartyservice/power/BatteryInfoFragment;->showSmartBatteryDialog()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$100(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V

    .line 267
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$1;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #calls: Lcom/zte/heartyservice/power/BatteryInfoFragment;->showModeChooseDialog()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$200(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V

    goto :goto_0
.end method

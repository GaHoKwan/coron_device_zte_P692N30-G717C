.class Lcom/zte/heartyservice/power/BatteryInfoFragment$2;
.super Ljava/lang/Object;
.source "BatteryInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/BatteryInfoFragment;->showSmartBatteryDialog()V
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
    .line 349
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$2;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 354
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/zte/heartyservice/power/SmartPowerManager;->setEnable(Z)V

    .line 358
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$2;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$300(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0527

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$2;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$2;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->tempLevel:I
    invoke-static {v1}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$400(Lcom/zte/heartyservice/power/BatteryInfoFragment;)I

    move-result v1

    #calls: Lcom/zte/heartyservice/power/BatteryInfoFragment;->UpdateRemainingTime(I)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$500(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)V

    .line 365
    :goto_1
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$2;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$300(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0528

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$2;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$600(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_1
.end method

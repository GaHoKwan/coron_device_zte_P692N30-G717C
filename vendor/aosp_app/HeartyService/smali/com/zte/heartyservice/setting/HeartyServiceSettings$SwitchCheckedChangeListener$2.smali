.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;
.super Ljava/lang/Object;
.source "HeartyServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    iput-boolean p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->turnOffVipMode(Landroid/content/Context;)V

    .line 319
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 320
    iget-boolean v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;->val$isChecked:Z

    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1602(Z)Z

    .line 321
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$2;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 322
    return-void
.end method

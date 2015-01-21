.class Lcom/zte/heartyservice/setting/InstructionActivity$1;
.super Ljava/lang/Object;
.source "InstructionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/InstructionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/InstructionActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/InstructionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zte/heartyservice/setting/InstructionActivity$1;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 73
    if-ne v2, p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity$1;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    #getter for: Lcom/zte/heartyservice/setting/InstructionActivity;->ueTips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->access$000(Lcom/zte/heartyservice/setting/InstructionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a068b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity$1;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    #getter for: Lcom/zte/heartyservice/setting/InstructionActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->access$100(Lcom/zte/heartyservice/setting/InstructionActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUEImprove(Z)V

    .line 76
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity$1;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    new-instance v1, Lcom/zte/feedback/UEImprove;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/InstructionActivity$1;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    invoke-direct {v1, v2}, Lcom/zte/feedback/UEImprove;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/zte/heartyservice/setting/InstructionActivity;->mUE:Lcom/zte/feedback/UEImprove;

    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity$1;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/InstructionActivity;->mUE:Lcom/zte/feedback/UEImprove;

    invoke-virtual {v0}, Lcom/zte/feedback/UEImprove;->showDialog()V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity$1;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    #getter for: Lcom/zte/heartyservice/setting/InstructionActivity;->ueTips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->access$000(Lcom/zte/heartyservice/setting/InstructionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a068a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/zte/heartyservice/setting/InstructionActivity$1;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    #getter for: Lcom/zte/heartyservice/setting/InstructionActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->access$100(Lcom/zte/heartyservice/setting/InstructionActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUEImprove(Z)V

    goto :goto_0
.end method

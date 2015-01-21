.class Lcom/zte/heartyservice/power/BatteryInfoFragment$3;
.super Ljava/lang/Object;
.source "BatteryInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/BatteryInfoFragment;->showModeChooseDialog()V
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
    .line 381
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 386
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$700(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Lcom/zte/heartyservice/power/SwitchTools;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/zte/heartyservice/power/SwitchTools;->convertPositionToId(I)I

    move-result v0

    .line 392
    .local v0, SwitchId:I
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$800(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "current_mode_id"

    const/4 v6, 0x4

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, modeId:I
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$800(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "radio_position"

    const/4 v6, -0x3

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 394
    .local v3, test:I
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$800(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mode_id_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 396
    .local v2, modified:Z
    const-string v4, "BatteryInfoFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSpinner Selected Enter: position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; modeId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; SwitchId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; raidoPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eq v0, v1, :cond_1

    .line 405
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$900(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "radio_position"

    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$900(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "current_mode_id"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$700(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Lcom/zte/heartyservice/power/SwitchTools;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    .line 410
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$300(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->baseMode:[Ljava/lang/Integer;
    invoke-static {v5}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1000(Lcom/zte/heartyservice/power/BatteryInfoFragment;)[Ljava/lang/Integer;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 411
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$600(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p2, v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 427
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 428
    return-void

    .line 416
    :cond_1
    if-ne v0, v1, :cond_0

    if-eqz v2, :cond_0

    .line 418
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$900(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "radio_position"

    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 420
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$900(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "current_mode_id"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$700(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Lcom/zte/heartyservice/power/SwitchTools;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    .line 423
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$300(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->baseMode:[Ljava/lang/Integer;
    invoke-static {v5}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1000(Lcom/zte/heartyservice/power/BatteryInfoFragment;)[Ljava/lang/Integer;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 424
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$600(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p2, v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method

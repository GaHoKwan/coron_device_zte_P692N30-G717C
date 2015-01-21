.class Lcom/zte/heartyservice/power/NewStaticsFragment$3;
.super Ljava/lang/Object;
.source "NewStaticsFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/NewStaticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v3, 0x0

    .line 415
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryType:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$500(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 416
    packed-switch p2, :pswitch_data_0

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$700(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 433
    :cond_0
    return-void

    .line 418
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #setter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v0, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$002(Lcom/zte/heartyservice/power/NewStaticsFragment;I)I

    .line 419
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$600(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "statics_spinner_position"

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v2}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$000(Lcom/zte/heartyservice/power/NewStaticsFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$002(Lcom/zte/heartyservice/power/NewStaticsFragment;I)I

    .line 424
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$600(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "statics_spinner_position"

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$3;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v2}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$000(Lcom/zte/heartyservice/power/NewStaticsFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0396
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

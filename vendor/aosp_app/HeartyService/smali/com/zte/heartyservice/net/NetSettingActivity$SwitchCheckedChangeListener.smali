.class Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;
.super Ljava/lang/Object;
.source "NetSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetSettingActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/net/NetSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/net/NetSettingActivity;Lcom/zte/heartyservice/net/NetSettingActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 85
    .local v0, id:I
    const-string v1, "NetSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChecked is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sparse-switch v0, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 88
    :sswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setDayWarnOpen(IZ)V

    goto :goto_0

    .line 91
    :sswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonWarnOpen(IZ)V

    goto :goto_0

    .line 96
    :sswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursOpen(IZ)V

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x7f0e01df -> :sswitch_2
        0x7f0e01e2 -> :sswitch_1
        0x7f0e01e9 -> :sswitch_0
    .end sparse-switch
.end method

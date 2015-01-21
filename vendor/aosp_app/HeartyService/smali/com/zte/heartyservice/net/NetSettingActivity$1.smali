.class Lcom/zte/heartyservice/net/NetSettingActivity$1;
.super Ljava/lang/Object;
.source "NetSettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 133
    packed-switch p2, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$102(Lcom/zte/heartyservice/net/NetSettingActivity;I)I

    .line 136
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #calls: Lcom/zte/heartyservice/net/NetSettingActivity;->updateUI()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$300(Lcom/zte/heartyservice/net/NetSettingActivity;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$102(Lcom/zte/heartyservice/net/NetSettingActivity;I)I

    .line 140
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity$1;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #calls: Lcom/zte/heartyservice/net/NetSettingActivity;->updateUI()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$300(Lcom/zte/heartyservice/net/NetSettingActivity;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f0e01b7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

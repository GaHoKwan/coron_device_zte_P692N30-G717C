.class Lcom/zte/heartyservice/net/NetIdleHoursSetting$1;
.super Ljava/lang/Object;
.source "NetIdleHoursSetting.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetIdleHoursSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$1;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 70
    packed-switch p2, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$1;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$002(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I

    .line 73
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$1;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #calls: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->updateUI()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$100(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$1;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$002(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I

    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$1;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #calls: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->updateUI()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$100(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x7f0e01b7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;
.super Ljava/lang/Object;
.source "ProduceInfoListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/ProduceInfoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/ProduceInfoListView;


# direct methods
.method private constructor <init>(Lcom/zte/engineer/ProduceInfoListView;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/engineer/ProduceInfoListView;Lcom/zte/engineer/ProduceInfoListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;-><init>(Lcom/zte/engineer/ProduceInfoListView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    #getter for: Lcom/zte/engineer/ProduceInfoListView;->stringsIDs:[I
    invoke-static {v1}, Lcom/zte/engineer/ProduceInfoListView;->access$100(Lcom/zte/engineer/ProduceInfoListView;)[I

    move-result-object v1

    aget v1, v1, p3

    packed-switch v1, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    return-void

    .line 183
    :pswitch_1
    const-string v1, "com.zte.smssecurity.action.SMS_SECURITY_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    const-class v2, Lcom/zte/engineer/ProductInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :pswitch_3
    const-string v1, "flag"

    iget-object v2, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    #getter for: Lcom/zte/engineer/ProduceInfoListView;->test_flg:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/engineer/ProduceInfoListView;->access$200(Lcom/zte/engineer/ProduceInfoListView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    const-class v2, Lcom/zte/engineer/TestFlag;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    const-class v2, Lcom/zte/engineer/BTAddressTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    :pswitch_5
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    const-class v2, Lcom/zte/engineer/WifiAddressTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/ProduceInfoListView;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x7f060075
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

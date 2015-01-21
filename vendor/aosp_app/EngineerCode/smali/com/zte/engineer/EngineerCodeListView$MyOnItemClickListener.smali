.class Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;
.super Ljava/lang/Object;
.source "EngineerCodeListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/EngineerCodeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/EngineerCodeListView;


# direct methods
.method private constructor <init>(Lcom/zte/engineer/EngineerCodeListView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/EngineerCodeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/engineer/EngineerCodeListView;Lcom/zte/engineer/EngineerCodeListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;-><init>(Lcom/zte/engineer/EngineerCodeListView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 47
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/EngineerCodeListView;

    #getter for: Lcom/zte/engineer/EngineerCodeListView;->stringsIDs:[I
    invoke-static {v1}, Lcom/zte/engineer/EngineerCodeListView;->access$100(Lcom/zte/engineer/EngineerCodeListView;)[I

    move-result-object v1

    aget v1, v1, p3

    packed-switch v1, :pswitch_data_0

    .line 67
    iget-object v1, p0, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/EngineerCodeListView;

    const-class v2, Lcom/zte/engineer/NotSupportNotification;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    const-string v1, "notification"

    iget-object v2, p0, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/EngineerCodeListView;

    iget-object v3, p0, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/EngineerCodeListView;

    #getter for: Lcom/zte/engineer/EngineerCodeListView;->stringsIDs:[I
    invoke-static {v3}, Lcom/zte/engineer/EngineerCodeListView;->access$100(Lcom/zte/engineer/EngineerCodeListView;)[I

    move-result-object v3

    aget v3, v3, p3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/EngineerCodeListView;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void

    .line 51
    :pswitch_0
    iget-object v1, p0, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;->this$0:Lcom/zte/engineer/EngineerCodeListView;

    const-class v2, Lcom/zte/engineer/ProduceInfoListView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 54
    :pswitch_1
    const-string v1, "com.zte.engineer.action.TEST_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 57
    :pswitch_2
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "do_factory_reset"

    const-string v2, "FactoryMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :pswitch_3
    const-string v1, "com.zte.engineer.action.BATTERY_LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 64
    :pswitch_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zte.engineer"

    const-string v3, "com.zte.engineer.BTTestEX"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f06006e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

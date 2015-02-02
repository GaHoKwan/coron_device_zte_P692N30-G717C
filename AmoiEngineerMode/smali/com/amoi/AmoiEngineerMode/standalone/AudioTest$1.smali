.class Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;
.super Ljava/lang/Object;
.source "AudioTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .line 47
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 48
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 50
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverCircuitTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/SpeakerAgingTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/ReceiverAgingTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/HeadsetTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/MainMicTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/RefMicTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

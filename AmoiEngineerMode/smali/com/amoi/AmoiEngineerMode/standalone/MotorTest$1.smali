.class Lcom/amoi/AmoiEngineerMode/standalone/MotorTest$1;
.super Ljava/lang/Object;
.source "MotorTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;

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
    .line 35
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 36
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 38
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/VibratorTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/MotorAgingTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

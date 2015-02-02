.class Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest$1;
.super Ljava/lang/Object;
.source "DoulSDCardTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;

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
    .line 34
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 35
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 37
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/SDCardTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 41
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/SDCard2Test;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;
.super Ljava/lang/Object;
.source "HardwareTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/HardwareTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/HardwareTest;


# direct methods
.method private constructor <init>(Lcom/amoi/AmoiEngineerMode/HardwareTest;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;->this$0:Lcom/amoi/AmoiEngineerMode/HardwareTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amoi/AmoiEngineerMode/HardwareTest;Lcom/amoi/AmoiEngineerMode/HardwareTest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;-><init>(Lcom/amoi/AmoiEngineerMode/HardwareTest;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 114
    .local v1, id:I
    invoke-static {}, Lcom/amoi/AmoiEngineerMode/HardwareTest;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 115
    .local v0, activity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const v3, 0x7f070054

    if-ne v1, v3, :cond_0

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.mediatek.FMRadio"

    const-string v5, "com.mediatek.FMRadio.FMRadioActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const-string v3, "AmoiEngineeMode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;->this$0:Lcom/amoi/AmoiEngineerMode/HardwareTest;

    invoke-virtual {v3, v2}, Lcom/amoi/AmoiEngineerMode/HardwareTest;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz v0, :cond_1

    .line 124
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;->this$0:Lcom/amoi/AmoiEngineerMode/HardwareTest;

    #calls: Lcom/amoi/AmoiEngineerMode/HardwareTest;->getIntentByActivity(Ljava/lang/Class;)Landroid/content/Intent;
    invoke-static {v3, v0}, Lcom/amoi/AmoiEngineerMode/HardwareTest;->access$200(Lcom/amoi/AmoiEngineerMode/HardwareTest;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 125
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;->this$0:Lcom/amoi/AmoiEngineerMode/HardwareTest;

    invoke-virtual {v3, v2}, Lcom/amoi/AmoiEngineerMode/HardwareTest;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v3, "HardwareTests"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Activity to lannch with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

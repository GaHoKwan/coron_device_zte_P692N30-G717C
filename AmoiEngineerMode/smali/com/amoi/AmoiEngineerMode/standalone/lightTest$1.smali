.class Lcom/amoi/AmoiEngineerMode/standalone/lightTest$1;
.super Ljava/lang/Object;
.source "lightTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/lightTest;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/lightTest;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/lightTest;

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
    .line 57
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/lightTest;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_class:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->access$000(Lcom/amoi/AmoiEngineerMode/standalone/lightTest;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 59
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/lightTest;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/lightTest;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_class:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->access$000(Lcom/amoi/AmoiEngineerMode/standalone/lightTest;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/lightTest;

    invoke-virtual {v1, v0}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->startActivity(Landroid/content/Intent;)V

    .line 62
    :cond_0
    return-void
.end method

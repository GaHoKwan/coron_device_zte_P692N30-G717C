.class Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;
.super Ljava/lang/Object;
.source "MTKThermalManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 144
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "MTKThermalManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spinner1 OnItemSelectedListener.onItemSelected() position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-nez p3, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    const-string v1, "/etc/.tp/thermal.conf"

    #setter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->selected_file_name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$002(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p3, :cond_1

    .line 154
    iget-object v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    const-string v1, "/etc/.tp/thermal.off.conf"

    #setter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->selected_file_name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$002(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p3, :cond_2

    .line 158
    iget-object v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    const-string v1, "/etc/.tp/.ht120.mtc"

    #setter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->selected_file_name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$002(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    iget-object v0, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$1;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    #getter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$100(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->selected_file_name:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$002(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "MTKThermalManagerActivity"

    const-string v1, "Spinner1 OnItemSelectedListener.onNothingSelected()\n"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

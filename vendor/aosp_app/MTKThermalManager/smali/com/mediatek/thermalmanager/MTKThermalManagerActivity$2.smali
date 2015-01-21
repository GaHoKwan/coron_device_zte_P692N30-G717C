.class Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;
.super Ljava/lang/Object;
.source "MTKThermalManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 171
    iput-object p1, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    invoke-static {v3}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$208(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)I

    .line 181
    const-string v3, "MTKThermalManagerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Spinner1 OnTouchListener.onTouch() cnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    #getter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->count:I
    invoke-static {v5}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$200(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    #getter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$100(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 183
    iget-object v3, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    #getter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$100(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Ljava/util/List;

    move-result-object v3

    const-string v4, "default"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v3, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    #getter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$100(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Ljava/util/List;

    move-result-object v3

    const-string v4, "thermal protection only"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v3, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    #getter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$100(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Ljava/util/List;

    move-result-object v3

    const-string v4, "high temp 120deg C"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v3, "/data"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, data_dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    .end local v0           #data_dir:Ljava/io/File;
    :cond_0
    :goto_0
    return v6

    .line 193
    .restart local v0       #data_dir:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 194
    .local v1, data_file_list:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 199
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 201
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mtc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    #getter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_list:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$100(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Ljava/util/List;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_3
    iget-object v3, p0, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity$2;->this$0:Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;

    #getter for: Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->mtc_file_adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;->access$300(Lcom/mediatek/thermalmanager/MTKThermalManagerActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

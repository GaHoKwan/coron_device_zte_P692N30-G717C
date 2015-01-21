.class Lcom/hf/UI/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showLoctionResultDialog(Lcom/hf/model/CityModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$isNew:Z


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;ZLcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$8;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$8;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-boolean p3, p0, Lcom/hf/UI/MainActivity$8;->val$isNew:Z

    iput-object p4, p0, Lcom/hf/UI/MainActivity$8;->val$city:Lcom/hf/model/CityModel;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/hf/UI/MainActivity$8;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 573
    iget-boolean v0, p0, Lcom/hf/UI/MainActivity$8;->val$isNew:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/hf/UI/MainActivity$8;->this$0:Lcom/hf/UI/MainActivity;

    iget-object v1, p0, Lcom/hf/UI/MainActivity$8;->val$city:Lcom/hf/model/CityModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/hf/UI/MainActivity;->showHttpDialog(Lcom/hf/model/CityModel;ZI)V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$8;->this$0:Lcom/hf/UI/MainActivity;

    iget-object v1, p0, Lcom/hf/UI/MainActivity$8;->val$city:Lcom/hf/model/CityModel;

    #calls: Lcom/hf/UI/MainActivity;->setAsDefaultCity(Lcom/hf/model/CityModel;)V
    invoke-static {v0, v1}, Lcom/hf/UI/MainActivity;->access$13(Lcom/hf/UI/MainActivity;Lcom/hf/model/CityModel;)V

    goto :goto_0
.end method

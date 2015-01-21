.class Lcom/hf/UI/InitDefaultActivity$10;
.super Ljava/lang/Object;
.source "InitDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/InitDefaultActivity;->showHttpDialog(Lcom/hf/model/CityModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/InitDefaultActivity;

.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;


# direct methods
.method constructor <init>(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/UI/HFDialog;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$10;->this$0:Lcom/hf/UI/InitDefaultActivity;

    iput-object p2, p0, Lcom/hf/UI/InitDefaultActivity$10;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/UI/InitDefaultActivity$10;->val$city:Lcom/hf/model/CityModel;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity$10;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 413
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity$10;->this$0:Lcom/hf/UI/InitDefaultActivity;

    iget-object v1, p0, Lcom/hf/UI/InitDefaultActivity$10;->val$city:Lcom/hf/model/CityModel;

    #calls: Lcom/hf/UI/InitDefaultActivity;->searchWeather(Lcom/hf/model/CityModel;)V
    invoke-static {v0, v1}, Lcom/hf/UI/InitDefaultActivity;->access$7(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/model/CityModel;)V

    .line 414
    return-void
.end method

.class Lcom/hf/UI/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showHttpDialog(Lcom/hf/model/CityModel;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$showDialog:Z

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;Lcom/hf/model/CityModel;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$12;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$12;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/UI/MainActivity$12;->val$city:Lcom/hf/model/CityModel;

    iput-boolean p4, p0, Lcom/hf/UI/MainActivity$12;->val$showDialog:Z

    iput p5, p0, Lcom/hf/UI/MainActivity$12;->val$type:I

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/hf/UI/MainActivity$12;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 699
    iget-object v0, p0, Lcom/hf/UI/MainActivity$12;->this$0:Lcom/hf/UI/MainActivity;

    iget-object v1, p0, Lcom/hf/UI/MainActivity$12;->val$city:Lcom/hf/model/CityModel;

    iget-boolean v2, p0, Lcom/hf/UI/MainActivity$12;->val$showDialog:Z

    iget v3, p0, Lcom/hf/UI/MainActivity$12;->val$type:I

    #calls: Lcom/hf/UI/MainActivity;->search(Lcom/hf/model/CityModel;ZI)V
    invoke-static {v0, v1, v2, v3}, Lcom/hf/UI/MainActivity;->access$14(Lcom/hf/UI/MainActivity;Lcom/hf/model/CityModel;ZI)V

    .line 700
    return-void
.end method

.class Lcom/hf/UI/MapActivity$4;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MapActivity;->showHttpDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MapActivity;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$isLeida:Z

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/UI/MapActivity;Lcom/hf/UI/HFDialog;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MapActivity$4;->this$0:Lcom/hf/UI/MapActivity;

    iput-object p2, p0, Lcom/hf/UI/MapActivity$4;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/UI/MapActivity$4;->val$url:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/hf/UI/MapActivity$4;->val$isLeida:Z

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/hf/UI/MapActivity$4;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 191
    iget-object v0, p0, Lcom/hf/UI/MapActivity$4;->this$0:Lcom/hf/UI/MapActivity;

    iget-object v1, p0, Lcom/hf/UI/MapActivity$4;->val$url:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/hf/UI/MapActivity$4;->val$isLeida:Z

    #calls: Lcom/hf/UI/MapActivity;->setBitmap(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/hf/UI/MapActivity;->access$4(Lcom/hf/UI/MapActivity;Ljava/lang/String;Z)V

    .line 192
    return-void
.end method

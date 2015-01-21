.class Lcom/hf/UI/InitDefaultActivity$6;
.super Ljava/lang/Object;
.source "InitDefaultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/InitDefaultActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/InitDefaultActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/InitDefaultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$6;->this$0:Lcom/hf/UI/InitDefaultActivity;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 339
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity$6;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #getter for: Lcom/hf/UI/InitDefaultActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;
    invoke-static {v0}, Lcom/hf/UI/InitDefaultActivity;->access$5(Lcom/hf/UI/InitDefaultActivity;)Lcom/hf/location/HFLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/location/HFLocationManager;->cancle()V

    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 343
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

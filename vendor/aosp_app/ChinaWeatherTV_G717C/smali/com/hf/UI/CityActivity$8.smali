.class Lcom/hf/UI/CityActivity$8;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$8;->this$0:Lcom/hf/UI/CityActivity;

    .line 818
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
    .line 821
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/hf/UI/CityActivity$8;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$19(Lcom/hf/UI/CityActivity;)Lcom/hf/location/HFLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/location/HFLocationManager;->cancle()V

    .line 823
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 826
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

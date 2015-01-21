.class Lcom/hf/UI/InitDefaultActivity$11;
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
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$11;->this$0:Lcom/hf/UI/InitDefaultActivity;

    iput-object p2, p0, Lcom/hf/UI/InitDefaultActivity$11;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/UI/InitDefaultActivity$11;->val$city:Lcom/hf/model/CityModel;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 421
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$11;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v2}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 422
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$11;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #setter for: Lcom/hf/UI/InitDefaultActivity;->mNetSwitch:Z
    invoke-static {v2, v3}, Lcom/hf/UI/InitDefaultActivity;->access$8(Lcom/hf/UI/InitDefaultActivity;Z)V

    .line 423
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$11;->this$0:Lcom/hf/UI/InitDefaultActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 424
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dialog_net_notice_switch"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity$11;->this$0:Lcom/hf/UI/InitDefaultActivity;

    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity$11;->val$city:Lcom/hf/model/CityModel;

    #calls: Lcom/hf/UI/InitDefaultActivity;->searchWeather(Lcom/hf/model/CityModel;)V
    invoke-static {v2, v3}, Lcom/hf/UI/InitDefaultActivity;->access$7(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/model/CityModel;)V

    .line 429
    return-void
.end method

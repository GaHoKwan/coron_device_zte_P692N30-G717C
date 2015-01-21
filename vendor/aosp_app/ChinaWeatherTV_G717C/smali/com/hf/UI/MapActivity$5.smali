.class Lcom/hf/UI/MapActivity$5;
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
    iput-object p1, p0, Lcom/hf/UI/MapActivity$5;->this$0:Lcom/hf/UI/MapActivity;

    iput-object p2, p0, Lcom/hf/UI/MapActivity$5;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/UI/MapActivity$5;->val$url:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/hf/UI/MapActivity$5;->val$isLeida:Z

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 199
    iget-object v2, p0, Lcom/hf/UI/MapActivity$5;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v2}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 200
    iget-object v2, p0, Lcom/hf/UI/MapActivity$5;->this$0:Lcom/hf/UI/MapActivity;

    #setter for: Lcom/hf/UI/MapActivity;->mNetSwitch:Z
    invoke-static {v2, v3}, Lcom/hf/UI/MapActivity;->access$5(Lcom/hf/UI/MapActivity;Z)V

    .line 201
    iget-object v2, p0, Lcom/hf/UI/MapActivity$5;->this$0:Lcom/hf/UI/MapActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dialog_net_notice_switch"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    iget-object v2, p0, Lcom/hf/UI/MapActivity$5;->this$0:Lcom/hf/UI/MapActivity;

    iget-object v3, p0, Lcom/hf/UI/MapActivity$5;->val$url:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/hf/UI/MapActivity$5;->val$isLeida:Z

    #calls: Lcom/hf/UI/MapActivity;->setBitmap(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/hf/UI/MapActivity;->access$4(Lcom/hf/UI/MapActivity;Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

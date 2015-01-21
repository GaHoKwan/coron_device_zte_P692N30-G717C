.class Lcom/hf/UI/MainActivity$21$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity$21;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hf/UI/MainActivity$21;

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity$21;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$21$1;->this$1:Lcom/hf/UI/MainActivity$21;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$21$1;->val$preferences:Landroid/content/SharedPreferences;

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1128
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 1129
    const-string v1, "finish"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/MainActivity$21$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1133
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "warning_switch"

    .line 1132
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1136
    iget-object v1, p0, Lcom/hf/UI/MainActivity$21$1;->this$1:Lcom/hf/UI/MainActivity$21;

    #setter for: Lcom/hf/UI/MainActivity$21;->checked:Z
    invoke-static {v1, p2}, Lcom/hf/UI/MainActivity$21;->access$0(Lcom/hf/UI/MainActivity$21;Z)V

    .line 1137
    return-void
.end method

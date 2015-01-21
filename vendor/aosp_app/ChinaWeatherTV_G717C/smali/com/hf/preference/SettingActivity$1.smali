.class Lcom/hf/preference/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/preference/SettingActivity;->sendBroadcast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/preference/SettingActivity;

.field private final synthetic val$newValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/preference/SettingActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/preference/SettingActivity$1;->this$0:Lcom/hf/preference/SettingActivity;

    iput-object p2, p0, Lcom/hf/preference/SettingActivity$1;->val$newValue:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "onPreferenceChange"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newValue = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hf/preference/SettingActivity$1;->val$newValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; oldValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hf/preference/SettingActivity$1;->this$0:Lcom/hf/preference/SettingActivity;

    #getter for: Lcom/hf/preference/SettingActivity;->mOldTempValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/hf/preference/SettingActivity;->access$0(Lcom/hf/preference/SettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/hf/preference/SettingActivity$1;->this$0:Lcom/hf/preference/SettingActivity;

    #getter for: Lcom/hf/preference/SettingActivity;->mOldTempValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/hf/preference/SettingActivity;->access$0(Lcom/hf/preference/SettingActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hf/preference/SettingActivity$1;->val$newValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "onPreferenceChange"

    const-string v2, "send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "temperature_type"

    iget-object v2, p0, Lcom/hf/preference/SettingActivity$1;->val$newValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/hf/preference/SettingActivity$1;->this$0:Lcom/hf/preference/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/hf/preference/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    iget-object v1, p0, Lcom/hf/preference/SettingActivity$1;->this$0:Lcom/hf/preference/SettingActivity;

    iget-object v2, p0, Lcom/hf/preference/SettingActivity$1;->val$newValue:Ljava/lang/String;

    #setter for: Lcom/hf/preference/SettingActivity;->mOldTempValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/hf/preference/SettingActivity;->access$1(Lcom/hf/preference/SettingActivity;Ljava/lang/String;)V

    .line 206
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

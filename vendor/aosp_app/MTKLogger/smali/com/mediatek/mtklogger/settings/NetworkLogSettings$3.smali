.class Lcom/mediatek/mtklogger/settings/NetworkLogSettings$3;
.super Ljava/lang/Object;
.source "NetworkLogSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/settings/NetworkLogSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/settings/NetworkLogSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings$3;->this$0:Lcom/mediatek/mtklogger/settings/NetworkLogSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 150
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 154
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 158
    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/NetworkLogSettings$3;->this$0:Lcom/mediatek/mtklogger/settings/NetworkLogSettings;

    #getter for: Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->mNtLogSizeLimitPre:Landroid/preference/EditTextPreference;
    invoke-static {v5}, Lcom/mediatek/mtklogger/settings/NetworkLogSettings;->access$200(Lcom/mediatek/mtklogger/settings/NetworkLogSettings;)Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 159
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    instance-of v5, v1, Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 160
    const-string v5, ""

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v1       #dialog:Landroid/app/Dialog;
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, inputSize:I
    const/16 v5, 0x64

    if-lt v3, v5, :cond_2

    const/4 v4, 0x1

    .line 168
    .local v4, isEnable:Z
    :goto_1
    move-object v0, v1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v5, v0

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    .end local v3           #inputSize:I
    .end local v4           #isEnable:Z
    :catch_0
    move-exception v2

    .line 170
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v5, "MTKLogger/NetworkLogSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Integer.parseInt("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #dialog:Landroid/app/Dialog;
    .restart local v3       #inputSize:I
    :cond_2
    move v4, v6

    .line 167
    goto :goto_1
.end method

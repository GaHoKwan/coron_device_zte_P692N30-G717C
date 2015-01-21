.class Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;
.super Ljava/lang/Object;
.source "SettingsFontSize.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 99
    const/high16 v9, 0x3f80

    .line 100
    .local v9, smallValue:F
    const/high16 v7, 0x3f80

    .line 101
    .local v7, largeValue:F
    const/high16 v1, 0x3f80

    .line 102
    .local v1, extraLargeValue:F
    iget-object v10, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    #getter for: Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditSmall:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->access$000(Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, small:Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    #getter for: Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditLarge:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->access$100(Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, large:Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    #getter for: Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->mEditExtraLarge:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;->access$200(Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, extralarge:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 192
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 113
    :try_start_0
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 114
    const-string v10, "EM_SetFontSize"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "small : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_1
    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 127
    :try_start_1
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 138
    :cond_2
    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 140
    :try_start_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 152
    :cond_3
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-lez v10, :cond_4

    const/4 v10, 0x0

    cmpg-float v10, v7, v10

    if-lez v10, :cond_4

    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gtz v10, :cond_5

    .line 153
    :cond_4
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "Warning"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "Please input right value!"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "OK"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "Warning"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "Please input right value!"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "OK"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 121
    const-string v10, "EM_SetFontSize"

    const-string v11, "--NumberFormatException"

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 130
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "Warning"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "Please input right value!"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "OK"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 134
    const-string v10, "EM_SetFontSize"

    const-string v11, "--NumberFormatException"

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 143
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "Warning"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "Please input right value!"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v11, "OK"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 147
    const-string v10, "EM_SetFontSize"

    const-string v11, "--NumberFormatException"

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_5
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 163
    iget-object v10, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "settings_fontsize_small"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v5

    .line 168
    .local v5, isSuccessSm:Z
    :goto_1
    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 169
    iget-object v10, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "settings_fontsize_large"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v4

    .line 174
    .local v4, isSuccessLa:Z
    :goto_2
    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 175
    iget-object v10, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "settings_fontsize_extralarge"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v3

    .line 181
    .local v3, isSuccessEx:Z
    :goto_3
    const-string v10, "EM_SetFontSize"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Set font size -- SMALL :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "LARGE :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "EXTRALARGE :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    .line 186
    iget-object v10, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    const-string v11, "Success!"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 166
    .end local v3           #isSuccessEx:Z
    .end local v4           #isSuccessLa:Z
    .end local v5           #isSuccessSm:Z
    :cond_6
    const/4 v5, 0x1

    .restart local v5       #isSuccessSm:Z
    goto :goto_1

    .line 172
    :cond_7
    const/4 v4, 0x1

    .restart local v4       #isSuccessLa:Z
    goto :goto_2

    .line 178
    :cond_8
    const/4 v3, 0x1

    .restart local v3       #isSuccessEx:Z
    goto :goto_3

    .line 189
    :cond_9
    iget-object v10, p0, Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize$1;->this$0:Lcom/mediatek/engineermode/settingsfontsize/SettingsFontSize;

    const-string v11, "Fail!"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

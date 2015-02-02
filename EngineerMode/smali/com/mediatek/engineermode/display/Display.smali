.class public Lcom/mediatek/engineermode/display/Display;
.super Landroid/app/Activity;
.source "Display.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CMD_LCD_OFF:Ljava/lang/String; = "echo 0 > /sys/class/leds/lcd-backlight/brightness"

.field private static final CMD_LCD_ON:Ljava/lang/String; = "echo 255 > /sys/class/leds/lcd-backlight/brightness"

.field private static final DUTY_FILE:Ljava/lang/String; = "/sys/class/leds/lcd-backlight/duty"

.field private static final FAIL_STRING:Ljava/lang/String; = "FFFFFFFF"

.field private static final FB0_LCM_POWER_OFF:I = 0x5

.field private static final FB0_LCM_POWER_ON:I = 0x4

.field private static final MAX_LENGTH:I = 0x2

.field private static final MAX_NUM:I = 0x3f

.field private static final RETURN_FAIL:I = -0x1

.field private static final RETURN_SUCCESS:I = 0x0

.field private static final SHELL_CAT:Ljava/lang/String; = "-c"

.field private static final SHELL_CMD:Ljava/lang/String; = "/system/bin/sh"

.field private static final SHELL_DIRECTION:Ljava/lang/String; = " > "

.field private static final SHELL_ECHO:Ljava/lang/String; = " echo "

.field private static final TAG:Ljava/lang/String; = "EM/Display"


# instance fields
.field private mBtnLcdOFF:Landroid/widget/Button;

.field private mBtnLcdON:Landroid/widget/Button;

.field private mBtnLcmOFF:Landroid/widget/Button;

.field private mBtnLcmON:Landroid/widget/Button;

.field private mBtnSet:Landroid/widget/Button;

.field private mEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static varargs controlFb0([I)I
    .locals 10
    .parameter "param"

    .prologue
    .line 242
    const/4 v7, -0x1

    .line 243
    .local v7, valueRet:I
    new-instance v2, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-direct {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;-><init>()V

    .line 251
    .local v2, fb0Ctrl:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
    const/16 v8, 0x7531

    invoke-virtual {v2, v8}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 253
    array-length v8, p0

    invoke-virtual {v2, v8}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 254
    move-object v0, p0

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, v0, v4

    .line 255
    .local v3, i:I
    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamInt(I)Z

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    .end local v3           #i:I
    :cond_0
    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    move-result-object v6

    .line 262
    .local v6, resultStr:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    :goto_1
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 281
    const/4 v7, -0x1

    .line 284
    .end local v0           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #resultStr:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_1
    return v7

    .line 265
    .restart local v0       #arr$:[I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #resultStr:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_2
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    const-string v9, "FFFFFFFF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 266
    const/4 v7, -0x1

    .line 267
    goto :goto_1

    .line 270
    :cond_3
    :try_start_0
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 277
    :goto_2
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    goto :goto_1

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v8, "EM/Display"

    iget-object v9, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v7, -0x1

    goto :goto_2
.end method

.method private static offLcmPower()I
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/display/Display;->controlFb0([I)I

    move-result v0

    return v0
.end method

.method private static onLcmPower()I
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/display/Display;->controlFb0([I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "arg0"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 129
    const-string v7, "EM/Display"

    const-string v8, "-->onClick"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v5, 0x0

    .line 131
    .local v5, sucessFlag:Z
    iget-object v7, p0, Lcom/mediatek/engineermode/display/Display;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 132
    iget-object v7, p0, Lcom/mediatek/engineermode/display/Display;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, editString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 134
    .local v3, falseFlag:Z
    const-string v7, "EM/Display"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->onClick editString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_1

    .line 138
    :cond_0
    const/4 v3, 0x1

    .line 142
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 143
    .local v6, tmpNum:I
    const/16 v7, 0x3f

    if-le v6, v7, :cond_2

    .line 144
    const/4 v3, 0x1

    .line 150
    .end local v6           #tmpNum:I
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 151
    const v7, 0x7f080095

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 216
    .end local v2           #editString:Ljava/lang/String;
    .end local v3           #falseFlag:Z
    :goto_1
    return-void

    .line 146
    .restart local v2       #editString:Ljava/lang/String;
    .restart local v3       #falseFlag:Z
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "EM/Display"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->onClick editString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    new-array v0, v13, [Ljava/lang/String;

    const-string v7, "/system/bin/sh"

    aput-object v7, v0, v10

    const-string v7, "-c"

    aput-object v7, v0, v12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " echo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/sys/class/leds/lcd-backlight/duty"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    .line 160
    .local v0, cmd:[Ljava/lang/String;
    const/4 v4, -0x1

    .line 162
    .local v4, ret:I
    :try_start_1
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 166
    :goto_2
    if-nez v4, :cond_4

    .line 167
    const/4 v5, 0x1

    .line 208
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v2           #editString:Ljava/lang/String;
    .end local v3           #falseFlag:Z
    .end local v4           #ret:I
    :cond_4
    :goto_3
    if-eqz v5, :cond_9

    .line 209
    const v7, 0x7f08009e

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 163
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v2       #editString:Ljava/lang/String;
    .restart local v3       #falseFlag:Z
    .restart local v4       #ret:I
    :catch_1
    move-exception v1

    .line 164
    .local v1, e:Ljava/io/IOException;
    const-string v7, "EM/Display"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 170
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #editString:Ljava/lang/String;
    .end local v3           #falseFlag:Z
    .end local v4           #ret:I
    :cond_5
    iget-object v7, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcdON:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 171
    new-array v0, v13, [Ljava/lang/String;

    const-string v7, "/system/bin/sh"

    aput-object v7, v0, v10

    const-string v7, "-c"

    aput-object v7, v0, v12

    const-string v7, "echo 255 > /sys/class/leds/lcd-backlight/brightness"

    aput-object v7, v0, v11

    .line 173
    .restart local v0       #cmd:[Ljava/lang/String;
    const/4 v4, -0x1

    .line 175
    .restart local v4       #ret:I
    :try_start_2
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 179
    :goto_4
    if-nez v4, :cond_4

    .line 180
    const/4 v5, 0x1

    goto :goto_3

    .line 176
    :catch_2
    move-exception v1

    .line 177
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "EM/Display"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 183
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #ret:I
    :cond_6
    iget-object v7, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcdOFF:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 184
    new-array v0, v13, [Ljava/lang/String;

    const-string v7, "/system/bin/sh"

    aput-object v7, v0, v10

    const-string v7, "-c"

    aput-object v7, v0, v12

    const-string v7, "echo 0 > /sys/class/leds/lcd-backlight/brightness"

    aput-object v7, v0, v11

    .line 186
    .restart local v0       #cmd:[Ljava/lang/String;
    const/4 v4, -0x1

    .line 188
    .restart local v4       #ret:I
    :try_start_3
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    .line 192
    :goto_5
    if-nez v4, :cond_4

    .line 193
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 189
    :catch_3
    move-exception v1

    .line 190
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "EM/Display"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 196
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #ret:I
    :cond_7
    iget-object v7, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcmON:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 198
    const-string v7, "EM/Display"

    const-string v8, "-->onClick  BtnLcmON"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/mediatek/engineermode/display/Display;->onLcmPower()I

    move-result v7

    if-nez v7, :cond_4

    .line 200
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 203
    :cond_8
    iget-object v7, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcmOFF:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 204
    invoke-static {}, Lcom/mediatek/engineermode/display/Display;->offLcmPower()I

    move-result v7

    if-nez v7, :cond_4

    .line 205
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 212
    :cond_9
    const v7, 0x7f08009f

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 106
    const v0, 0x7f0b0167

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcdON:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0b0168

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcdOFF:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0b016a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcmON:Landroid/widget/Button;

    .line 109
    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcmOFF:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0b0165

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnSet:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0b0164

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mEdit:Landroid/widget/EditText;

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcdON:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcmON:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcdOFF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/engineermode/display/Display;->mBtnLcmOFF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.class public Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;
.super Ljava/lang/Object;
.source "NfcCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/NfcCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitMapValue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFunctionValue([Landroid/widget/CheckBox;)I
    .locals 5
    .parameter "checkBoxs"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, result:I
    aget-object v1, p0, v3

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 407
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    or-int/2addr v0, v1

    .line 408
    aget-object v1, p0, v4

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    :cond_0
    or-int/2addr v0, v3

    .line 409
    return v0

    :cond_1
    move v1, v3

    .line 406
    goto :goto_0

    :cond_2
    move v1, v3

    .line 407
    goto :goto_1
.end method

.method public static getSwioValue([Landroid/widget/CheckBox;)I
    .locals 5
    .parameter "checkBoxs"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, result:I
    aget-object v1, p0, v3

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 415
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    or-int/2addr v0, v1

    .line 416
    aget-object v1, p0, v4

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    :cond_0
    or-int/2addr v0, v3

    .line 417
    return v0

    :cond_1
    move v1, v3

    .line 414
    goto :goto_0

    :cond_2
    move v1, v3

    .line 415
    goto :goto_1
.end method

.method public static getTypeAbDataRateValue([Landroid/widget/RadioButton;)I
    .locals 5
    .parameter "checkBoxs"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, result:I
    aget-object v1, p0, v3

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 203
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    or-int/2addr v0, v1

    .line 204
    aget-object v1, p0, v4

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    :goto_2
    or-int/2addr v0, v1

    .line 205
    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v3, 0x8

    :cond_0
    or-int/2addr v0, v3

    .line 206
    return v0

    :cond_1
    move v1, v3

    .line 202
    goto :goto_0

    :cond_2
    move v1, v3

    .line 203
    goto :goto_1

    :cond_3
    move v1, v3

    .line 204
    goto :goto_2
.end method

.method public static getTypeFDataRateValue([Landroid/widget/RadioButton;)I
    .locals 3
    .parameter "checkBoxs"

    .prologue
    const/4 v2, 0x0

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, result:I
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v0, v1

    .line 212
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    :cond_0
    or-int/2addr v0, v2

    .line 213
    return v0

    :cond_1
    move v1, v2

    .line 211
    goto :goto_0
.end method

.method public static getTypeVDataRateValue([Landroid/widget/RadioButton;)I
    .locals 3
    .parameter "checkBoxs"

    .prologue
    const/4 v2, 0x0

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, result:I
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    :goto_0
    or-int/2addr v0, v1

    .line 219
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x20

    :cond_0
    or-int/2addr v0, v2

    .line 220
    return v0

    :cond_1
    move v1, v2

    .line 218
    goto :goto_0
.end method

.method public static getTypeValue([Landroid/widget/CheckBox;)I
    .locals 6
    .parameter "checkBoxs"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, result:I
    aget-object v1, p0, v3

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 192
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    or-int/2addr v0, v1

    .line 193
    aget-object v1, p0, v4

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    :goto_2
    or-int/2addr v0, v1

    .line 194
    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    :goto_3
    or-int/2addr v0, v1

    .line 196
    aget-object v1, p0, v5

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v3, 0x20

    :cond_0
    or-int/2addr v0, v3

    .line 197
    return v0

    :cond_1
    move v1, v3

    .line 191
    goto :goto_0

    :cond_2
    move v1, v3

    .line 192
    goto :goto_1

    :cond_3
    move v1, v3

    .line 193
    goto :goto_2

    :cond_4
    move v1, v3

    .line 194
    goto :goto_3
.end method

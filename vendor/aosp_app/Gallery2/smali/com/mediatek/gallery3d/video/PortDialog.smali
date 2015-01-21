.class public Lcom/mediatek/gallery3d/video/PortDialog;
.super Landroid/app/AlertDialog;
.source "PortDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BTN_CANCEL:I = -0x2

.field private static final BTN_OK:I = -0x1

.field private static final ERROR_MAX_EMPTY:I = 0x0

.field private static final ERROR_MAX_INVALID:I = 0x2

.field private static final ERROR_MIN_EMPTY:I = 0x1

.field private static final ERROR_MIN_INVALID:I = 0x3

.field private static final ERROR_NONE:I = -0x1

.field private static final LOG:Z = true

.field private static final RTSP_MIN_UDP_PORT:I = 0x400

.field private static final SETTING_KEY_MAX_PORT:Ljava/lang/String; = "mtk_rtsp_max_udp_port"

.field private static final SETTING_KEY_MIN_PORT:Ljava/lang/String; = "mtk_rtsp_min_udp_port"

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/PortDialog"

.field private static final UNKNOWN_PORT:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mMax:Ljava/lang/String;

.field private mMaxErrMsg:Landroid/widget/TextView;

.field private mMaxField:Landroid/widget/EditText;

.field private mMin:Ljava/lang/String;

.field private mMinErrMsg:Landroid/widget/TextView;

.field private mMinField:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 106
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mCr:Landroid/content/ContentResolver;

    .line 108
    return-void
.end method

.method private savePort()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, save:Z
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mCr:Landroid/content/ContentResolver;

    const-string v3, "mtk_rtsp_max_udp_port"

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mCr:Landroid/content/ContentResolver;

    const-string v3, "mtk_rtsp_min_udp_port"

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/4 v1, 0x1

    .line 292
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 293
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mCr:Landroid/content/ContentResolver;

    const-string v3, "mtk_rtsp_max_udp_port"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mCr:Landroid/content/ContentResolver;

    const-string v3, "mtk_rtsp_min_udp_port"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    :cond_1
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 6
    .parameter "errCode"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 251
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, errMsg:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 273
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 277
    :cond_0
    return-void

    .line 255
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxField:Landroid/widget/EditText;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinField:Landroid/widget/EditText;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxErrMsg:Landroid/widget/TextView;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinErrMsg:Landroid/widget/TextView;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validate()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 188
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    .line 189
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    .line 190
    const/4 v1, 0x1

    .line 192
    .local v1, isValid:Z
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxField:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinField:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxErrMsg:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinErrMsg:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 198
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    invoke-direct {p0, v8}, Lcom/mediatek/gallery3d/video/PortDialog;->showError(I)V

    .line 200
    const/4 v1, 0x0

    .line 202
    :cond_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 203
    invoke-direct {p0, v9}, Lcom/mediatek/gallery3d/video/PortDialog;->showError(I)V

    .line 204
    const/4 v1, 0x0

    .line 206
    :cond_1
    const/4 v2, -0x1

    .line 207
    .local v2, maxPort:I
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    if-lez v2, :cond_2

    const v4, 0xffff

    if-le v2, v4, :cond_3

    .line 211
    :cond_2
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/mediatek/gallery3d/video/PortDialog;->showError(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v1, 0x0

    .line 220
    :cond_3
    :goto_0
    const/4 v3, -0x1

    .line 221
    .local v3, minPort:I
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 223
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 224
    const/16 v4, 0x400

    if-lt v3, v4, :cond_4

    const v4, 0xffff

    if-le v3, v4, :cond_5

    .line 225
    :cond_4
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/mediatek/gallery3d/video/PortDialog;->showError(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    const/4 v1, 0x0

    .line 234
    :cond_5
    :goto_1
    if-eq v2, v6, :cond_6

    if-eq v3, v6, :cond_6

    if-ge v2, v3, :cond_6

    .line 235
    invoke-direct {p0, v7}, Lcom/mediatek/gallery3d/video/PortDialog;->showError(I)V

    .line 236
    const/4 v1, 0x0

    .line 239
    :cond_6
    invoke-virtual {p0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 240
    if-eqz v1, :cond_8

    .line 241
    invoke-virtual {p0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    .end local v2           #maxPort:I
    .end local v3           #minPort:I
    :cond_7
    :goto_2
    return-void

    .line 214
    .restart local v2       #maxPort:I
    :catch_0
    move-exception v0

    .line 215
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v4, "Gallery2/VideoPlayer/PortDialog"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, v7}, Lcom/mediatek/gallery3d/video/PortDialog;->showError(I)V

    .line 217
    const/4 v1, 0x0

    goto :goto_0

    .line 228
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local v3       #minPort:I
    :catch_1
    move-exception v0

    .line 229
    .restart local v0       #ex:Ljava/lang/NumberFormatException;
    const-string v4, "Gallery2/VideoPlayer/PortDialog"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v10}, Lcom/mediatek/gallery3d/video/PortDialog;->showError(I)V

    .line 231
    const/4 v1, 0x0

    goto :goto_1

    .line 243
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_8
    invoke-virtual {p0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/PortDialog;->validate()V

    .line 185
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 181
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 172
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/PortDialog;->savePort()V

    .line 175
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    .line 112
    const v3, 0x7f0c01e4

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04004c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mView:Landroid/view/View;

    .line 114
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b010a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxField:Landroid/widget/EditText;

    .line 120
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0108

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinField:Landroid/widget/EditText;

    .line 122
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxField:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinField:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_rtsp_max_udp_port"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, maxPort:I
    if-ne v1, v6, :cond_4

    .line 125
    const-string v3, ""

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    .line 134
    :goto_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxField:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_rtsp_min_udp_port"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 138
    .local v2, minPort:I
    if-ne v2, v6, :cond_6

    .line 139
    const-string v3, ""

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    .line 148
    :goto_2
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinField:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    .end local v1           #maxPort:I
    .end local v2           #minPort:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0109

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxErrMsg:Landroid/widget/TextView;

    .line 153
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxErrMsg:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMaxErrMsg:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0107

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinErrMsg:Landroid/widget/TextView;

    .line 158
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinErrMsg:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 159
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMinErrMsg:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_3
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 163
    const/4 v3, -0x2

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mContext:Landroid/content/Context;

    const/high16 v5, 0x104

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/PortDialog;->validate()V

    .line 169
    return-void

    .line 128
    .restart local v1       #maxPort:I
    :cond_4
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Gallery2/VideoPlayer/PortDialog"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, ""

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMax:Ljava/lang/String;

    goto/16 :goto_0

    .line 134
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_5
    const-string v3, ""

    goto/16 :goto_1

    .line 142
    .restart local v2       #minPort:I
    :cond_6
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .restart local v0       #ex:Ljava/lang/NumberFormatException;
    const-string v3, "Gallery2/VideoPlayer/PortDialog"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v3, ""

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/PortDialog;->mMin:Ljava/lang/String;

    goto/16 :goto_2

    .line 148
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_7
    const-string v3, ""

    goto/16 :goto_3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 178
    return-void
.end method

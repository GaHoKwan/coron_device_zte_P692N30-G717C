.class public Lcom/mediatek/gallery3d/video/ProxyDialog;
.super Landroid/app/AlertDialog;
.source "ProxyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BTN_CANCEL:I = -0x2

.field private static final BTN_OK:I = -0x1

.field private static final ERROR_HOST_EMPTY:I = 0x0

.field private static final ERROR_HOST_INVALID:I = 0x2

.field private static final ERROR_NONE:I = -0x1

.field private static final ERROR_PORT_EMPTY:I = 0x1

.field private static final ERROR_PORT_INVALID:I = 0x3

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/ProxyDialog"

.field public static final TYPE_HTTP:I = 0x2

.field public static final TYPE_RTSP:I = 0x1

.field private static final UNKNOWN_PORT:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private mHost:Ljava/lang/String;

.field private mHostErrMsg:Landroid/widget/TextView;

.field private mHostField:Landroid/widget/EditText;

.field private mPort:Ljava/lang/String;

.field private mPortErrMsg:Landroid/widget/TextView;

.field private mPortField:Landroid/widget/EditText;

.field private mSettingKeyProxyHost:Ljava/lang/String;

.field private mSettingKeyProxyPort:Ljava/lang/String;

.field private final mType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    .line 111
    iput p2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mType:I

    .line 112
    iget v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    const-string v0, "mtk_rtsp_proxy_host"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    .line 114
    const-string v0, "mtk_rtsp_proxy_port"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    .line 123
    :goto_0
    const-string v0, "Gallery2/VideoPlayer/ProxyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "Gallery2/VideoPlayer/ProxyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING_KEY_PROXY_HOST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, "Gallery2/VideoPlayer/ProxyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING_KEY_PROXY_PORT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 115
    :cond_0
    iget v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 116
    const-string v0, "mtk_http_proxy_host"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    .line 117
    const-string v0, "mtk_http_proxy_port"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". type should be one of ProxyDialog.TYPE_RTSP and ProxyDialog.TYPE_HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enableProxy()V
    .locals 5

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, save:Z
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    const/4 v1, 0x1

    .line 293
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 294
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    :cond_1
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 5
    .parameter "errCode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 252
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, errMsg:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 274
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    :cond_0
    return-void

    .line 256
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostField:Landroid/widget/EditText;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortField:Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validate()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 208
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    .line 209
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    .line 210
    const/4 v1, 0x1

    .line 212
    .local v1, isValid:Z
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostField:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortField:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 218
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-direct {p0, v6}, Lcom/mediatek/gallery3d/video/ProxyDialog;->showError(I)V

    .line 220
    const/4 v1, 0x0

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 223
    invoke-direct {p0, v7}, Lcom/mediatek/gallery3d/video/ProxyDialog;->showError(I)V

    .line 224
    const/4 v1, 0x0

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 229
    .local v2, port:I
    if-lez v2, :cond_2

    const v3, 0xffff

    if-le v2, v3, :cond_3

    .line 230
    :cond_2
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/mediatek/gallery3d/video/ProxyDialog;->showError(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    const/4 v1, 0x0

    .line 240
    .end local v2           #port:I
    :cond_3
    :goto_0
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 241
    if-eqz v1, :cond_5

    .line 242
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 249
    :cond_4
    :goto_1
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Gallery2/VideoPlayer/ProxyDialog"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, v8}, Lcom/mediatek/gallery3d/video/ProxyDialog;->showError(I)V

    .line 236
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_5
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/ProxyDialog;->validate()V

    .line 205
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 201
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mType:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 192
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/ProxyDialog;->enableProxy()V

    .line 195
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 131
    iget v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 132
    const v2, 0x7f0c01da

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 136
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040050

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mView:Landroid/view/View;

    .line 137
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostField:Landroid/widget/EditText;

    .line 143
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0115

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortField:Landroid/widget/EditText;

    .line 145
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    .line 147
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHost:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, port:I
    if-ne v1, v5, :cond_6

    .line 152
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    .line 161
    :goto_2
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    .end local v1           #port:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    .line 166
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    .line 171
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 176
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mContext:Landroid/content/Context;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 178
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/ProxyDialog;->validate()V

    .line 182
    return-void

    .line 134
    :cond_4
    const v2, 0x7f0c01de

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(I)V

    goto/16 :goto_0

    .line 147
    :cond_5
    const-string v2, ""

    goto :goto_1

    .line 155
    .restart local v1       #port:I
    :cond_6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "Gallery2/VideoPlayer/ProxyDialog"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/ProxyDialog;->mPort:Ljava/lang/String;

    goto :goto_2

    .line 161
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_7
    const-string v2, ""

    goto :goto_3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 198
    return-void
.end method

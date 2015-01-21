.class public Lcom/mediatek/gallery3d/video/LimitDialog;
.super Landroid/app/AlertDialog;
.source "LimitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BTN_CANCEL:I = -0x2

.field private static final BTN_OK:I = -0x1

.field private static final DEFAULT_HTTP_BUFFER_SIZE:I = 0xa

.field private static final DEFAULT_HTTP_BUFFER_SIZE_MAX:I = 0x1e

.field private static final DEFAULT_HTTP_BUFFER_SIZE_MIN:I = 0x5

.field private static final DEFAULT_RTSP_BUFFER_SIZE:I = 0x6

.field private static final DEFAULT_RTSP_BUFFER_SIZE_MAX:I = 0xc

.field private static final DEFAULT_RTSP_BUFFER_SIZE_MIN:I = 0x4

.field private static final ERROR_EMPTY:I = 0x0

.field private static final ERROR_INVALID:I = 0x1

.field private static final KEY_HTTP_BUFFER_SIZE:Ljava/lang/String; = "MTK-HTTP-CACHE-SIZE"

.field private static final KEY_RTSP_BUFFER_SIZE:Ljava/lang/String; = "MTK-RTSP-CACHE-SIZE"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/LimitDialog"

.field public static final TYPE_HTTP:I = 0x2

.field public static final TYPE_RTSP:I = 0x1


# instance fields
.field private mBufferField:Landroid/widget/EditText;

.field private mBufferSize:I

.field private mBufferTip:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private final mDefaultValue:I

.field private final mKey:Ljava/lang/String;

.field private final mMaxValue:I

.field private final mMinValue:I

.field private final mType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 112
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mCr:Landroid/content/ContentResolver;

    .line 114
    iput p2, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mType:I

    .line 115
    iget v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    const-string v0, "MTK-HTTP-CACHE-SIZE"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mKey:Ljava/lang/String;

    .line 117
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mMinValue:I

    .line 118
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mMaxValue:I

    .line 119
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mDefaultValue:I

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mDefaultValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferSize:I

    .line 128
    const-string v0, "Gallery2/VideoPlayer/LimitDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LimitDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mBufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 121
    :cond_0
    const-string v0, "MTK-RTSP-CACHE-SIZE"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mKey:Ljava/lang/String;

    .line 122
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mMinValue:I

    .line 123
    const/16 v0, 0xc

    iput v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mMaxValue:I

    .line 124
    const/4 v0, 0x6

    iput v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mDefaultValue:I

    goto :goto_0
.end method

.method private enableCacheSize()V
    .locals 4

    .prologue
    .line 201
    const-string v1, "Gallery2/VideoPlayer/LimitDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCacheSize() mBufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mKey:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferSize:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private validate()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 175
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, bufferSize:Ljava/lang/String;
    const/4 v2, 0x1

    .line 177
    .local v2, isValid:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    :cond_0
    const/4 v2, 0x0

    .line 190
    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 191
    if-eqz v2, :cond_5

    .line 192
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    :cond_2
    :goto_1
    return-void

    .line 181
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferSize:I

    .line 182
    iget v3, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferSize:I

    iget v4, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mMinValue:I

    if-lt v3, v4, :cond_4

    iget v3, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferSize:I

    iget v4, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mMaxValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v4, :cond_1

    .line 183
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Gallery2/VideoPlayer/LimitDialog"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x0

    goto :goto_0

    .line 194
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_5
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/LimitDialog;->validate()V

    .line 172
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 168
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 159
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/LimitDialog;->enableCacheSize()V

    .line 162
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 134
    iget v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mType:I

    if-ne v0, v3, :cond_2

    .line 135
    const v0, 0x7f0c021c

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mView:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 143
    :cond_0
    invoke-virtual {p0, v6}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferField:Landroid/widget/EditText;

    .line 145
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferTip:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferField:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferSize:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mBufferTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0222

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mMinValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mMaxValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LimitDialog;->mContext:Landroid/content/Context;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 153
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/LimitDialog;->validate()V

    .line 156
    return-void

    .line 137
    :cond_2
    const v0, 0x7f0c021f

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 165
    return-void
.end method

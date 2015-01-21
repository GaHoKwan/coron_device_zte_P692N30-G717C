.class public Lcom/mediatek/engineermode/baseband/Baseband;
.super Landroid/app/Activity;
.source "Baseband.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_VALUE:I = 0x400

.field private static final PARA_NUM:I = 0x4

.field private static final RADIX_LENGTH_SIXTEEN:I = 0x10

.field private static final RADIX_LENGTH_TEN:I = 0xa

.field private static final READ:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EM-Baseband"

.field private static final WRITE:I = 0x1


# instance fields
.field private mBtnRead:Landroid/widget/Button;

.field private mBtnWrite:Landroid/widget/Button;

.field private mEditAddr:Landroid/widget/EditText;

.field private mEditLen:Landroid/widget/EditText;

.field private mEditVal:Landroid/widget/EditText;

.field private mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

.field private mInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private updateUI()V
    .locals 3

    .prologue
    .line 197
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    move-result-object v0

    .line 198
    .local v0, r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    const-string v1, ""

    iget-object v2, v0, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    :goto_0
    iget v1, v0, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 206
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mInfo:Landroid/widget/TextView;

    const v2, 0x7f080480

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 208
    :cond_1
    return-void

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mInfo:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget v1, v0, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public checkValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "addrString"
    .parameter "lenString"
    .parameter "valString"

    .prologue
    const/4 v3, 0x0

    .line 173
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v3

    .line 177
    :cond_1
    const-wide/16 v1, 0x0

    .line 179
    .local v1, lenValue:J
    const/16 v4, 0x10

    :try_start_0
    invoke-static {p1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 180
    const/16 v4, 0xa

    invoke-static {p2, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 181
    const/16 v4, 0x10

    invoke-static {p3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x400

    cmp-long v4, v1, v4

    if-gtz v4, :cond_0

    .line 188
    const/4 v3, 0x1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public functionCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "flag"
    .parameter "address"
    .parameter "len"
    .parameter "value"

    .prologue
    .line 144
    new-instance v1, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-direct {v1}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    .line 145
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v0

    .line 147
    .local v0, result:Z
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 148
    if-nez p1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    const-string v2, "r"

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamString(Ljava/lang/String;)Z

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-virtual {v1, p2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamString(Ljava/lang/String;)Z

    .line 154
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-virtual {v1, p3}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamString(Ljava/lang/String;)Z

    .line 155
    if-nez p1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamString(Ljava/lang/String;)Z

    .line 160
    :goto_1
    return v0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    const-string v2, "w"

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamString(Ljava/lang/String;)Z

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mFmFunctionCallEx:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-virtual {v1, p4}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamString(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "arg0"

    .prologue
    const v8, 0x7f08047f

    const/4 v7, 0x1

    .line 94
    iget-object v5, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mEditAddr:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, addrString:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mEditLen:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, lenString:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mEditVal:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, valString:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 100
    invoke-virtual {p0, v0, v1, v4}, Lcom/mediatek/engineermode/baseband/Baseband;->checkValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 101
    .local v3, result0:Z
    if-nez v3, :cond_1

    .line 102
    const v5, 0x7f08047c

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 129
    .end local v3           #result0:Z
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v3       #result0:Z
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/mediatek/engineermode/baseband/Baseband;->functionCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 107
    .local v2, result:Z
    if-nez v2, :cond_2

    .line 108
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/baseband/Baseband;->updateUI()V

    goto :goto_0

    .line 112
    .end local v2           #result:Z
    .end local v3           #result0:Z
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mBtnWrite:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 113
    invoke-virtual {p0, v0, v1, v4}, Lcom/mediatek/engineermode/baseband/Baseband;->checkValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 114
    .restart local v3       #result0:Z
    if-nez v3, :cond_4

    .line 115
    const v5, 0x7f08047d

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p0, v7, v0, v1, v4}, Lcom/mediatek/engineermode/baseband/Baseband;->functionCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 121
    .restart local v2       #result:Z
    if-nez v2, :cond_5

    .line 122
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/engineermode/baseband/Baseband;->updateUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mBtnRead:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mBtnWrite:Landroid/widget/Button;

    .line 77
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mEditAddr:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mEditLen:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mEditVal:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mInfo:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/engineermode/baseband/Baseband;->mBtnWrite:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

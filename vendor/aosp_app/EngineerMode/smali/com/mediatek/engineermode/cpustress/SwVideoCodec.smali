.class public Lcom/mediatek/engineermode/cpustress/SwVideoCodec;
.super Lcom/mediatek/engineermode/cpustress/CpuStressCommon;
.source "SwVideoCodec.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PERCENT:D = 100.0

.field private static final TAG:Ljava/lang/String; = "EM/CpuStress_SwVideoCodec"


# instance fields
.field private mBtnStart:Landroid/widget/Button;

.field private mEtIteration:Landroid/widget/EditText;

.field private mEtLoopCount:Landroid/widget/EditText;

.field private mTvArray:[Landroid/widget/TextView;

.field private mTvResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mBtnStart:Landroid/widget/Button;

    .line 58
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtLoopCount:Landroid/widget/EditText;

    .line 59
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtIteration:Landroid/widget/EditText;

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvResult:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cpustress/SwVideoCodec;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->updateTestResult()V

    return-void
.end method

.method private showTestResult(II)V
    .locals 4
    .parameter "indexMode"
    .parameter "result"

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, index:I
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v1, :cond_4

    .line 177
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    aget-object v3, v2, v0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p2

    if-nez v2, :cond_3

    const v2, 0x7f080123

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    .end local v0           #i:I
    :pswitch_0
    const/4 v1, 0x0

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    const/4 v1, 0x1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    const/4 v1, 0x2

    .line 155
    goto :goto_0

    .line 157
    :pswitch_3
    const/4 v1, 0x3

    .line 158
    goto :goto_0

    .line 160
    :pswitch_4
    const/4 v1, 0x7

    .line 161
    goto :goto_0

    .line 163
    :pswitch_5
    const/16 v2, 0x8

    sget v3, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-ne v2, v3, :cond_0

    .line 164
    const/4 v1, 0x7

    goto :goto_0

    .line 165
    :cond_0
    const/4 v2, 0x4

    sget v3, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-ne v2, v3, :cond_1

    .line 166
    const/4 v1, 0x3

    goto :goto_0

    .line 167
    :cond_1
    const/4 v2, 0x2

    sget v3, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-ne v2, v3, :cond_2

    .line 168
    const/4 v1, 0x1

    goto :goto_0

    .line 170
    :cond_2
    const/4 v1, 0x0

    .line 172
    goto :goto_0

    .line 177
    .restart local v0       #i:I
    :cond_3
    const v2, 0x7f080122

    goto :goto_2

    .line 180
    :cond_4
    return-void

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateStartUI()V
    .locals 4

    .prologue
    const v3, 0x7f080121

    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtLoopCount:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtIteration:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mBtnStart:Landroid/widget/Button;

    const v2, 0x7f080158

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvResult:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 245
    return-void
.end method

.method private updateTestCount(II)V
    .locals 8
    .parameter "total"
    .parameter "pass"

    .prologue
    .line 191
    const-string v1, "EM/CpuStress_SwVideoCodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter updateTestResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v0, sb:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 194
    const v1, 0x7f080159

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    int-to-double v4, p2

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvResult:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method private updateTestResult()V
    .locals 8

    .prologue
    .line 94
    const-string v0, "EM/CpuStress_SwVideoCodec"

    const-string v1, "Enter updateTestResult"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 96
    .local v7, data:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 97
    const-string v0, "result_video_codec"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 98
    .local v6, times:I
    const-string v0, "run"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "loopcount"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "iteration"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "result"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->updateTestUi(ZJIII)V

    .line 102
    const-string v0, "result_pass_video_codec"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->updateTestCount(II)V

    .line 104
    .end local v6           #times:I
    :cond_0
    return-void
.end method

.method private updateTestUi(ZJIII)V
    .locals 6
    .parameter "bRun"
    .parameter "iCount"
    .parameter "iItera"
    .parameter "result"
    .parameter "times"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    const-string v1, "EM/CpuStress_SwVideoCodec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTestUI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtLoopCount:Landroid/widget/EditText;

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtLoopCount:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtIteration:Landroid/widget/EditText;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtIteration:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtLoopCount:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtLoopCount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 129
    if-lez p6, :cond_0

    .line 130
    sget v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    invoke-direct {p0, v1, p5}, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->showTestResult(II)V

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mBtnStart:Landroid/widget/Button;

    if-eqz p1, :cond_3

    const v1, 0x7f080158

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    if-nez p1, :cond_4

    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const v2, 0x7f080121

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0           #i:I
    :cond_1
    move v1, v3

    .line 124
    goto :goto_0

    :cond_2
    move v2, v3

    .line 126
    goto :goto_1

    .line 132
    :cond_3
    const v1, 0x7f080157

    goto :goto_2

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-boolean v1, v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopSwCodec:Z

    if-nez v1, :cond_5

    .line 140
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 142
    :cond_5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    .line 203
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 204
    const-string v5, "EM/CpuStress_SwVideoCodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is clicked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080157

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    const-wide/16 v0, 0x0

    .line 208
    .local v0, count:J
    const/4 v3, 0x0

    .line 210
    .local v3, iteration:I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtLoopCount:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 211
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtIteration:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 220
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v2, data:Landroid/os/Bundle;
    const-string v5, "loopcount"

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 222
    const-string v5, "iteration"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v5, v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->startTest(Landroid/os/Bundle;)V

    .line 224
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->updateStartUI()V

    .line 232
    .end local v0           #count:J
    .end local v2           #data:Landroid/os/Bundle;
    .end local v3           #iteration:I
    :goto_0
    return-void

    .line 213
    .restart local v0       #count:J
    .restart local v3       #iteration:I
    :catch_0
    move-exception v4

    .line 214
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v5, "EM/CpuStress_SwVideoCodec"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const v5, 0x7f08011d

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    .end local v0           #count:J
    .end local v3           #iteration:I
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    :cond_0
    const/16 v5, 0x3e9

    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 227
    iget-object v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v5}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->stopTest()V

    goto :goto_0

    .line 230
    :cond_1
    const-string v5, "EM/CpuStress_SwVideoCodec"

    const-string v6, "Unknown event"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 67
    const v0, 0x7f0b020d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mBtnStart:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0b0203

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtLoopCount:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0b0204

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mEtIteration:Landroid/widget/EditText;

    .line 70
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const v0, 0x7f0b0205

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 71
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    const/4 v2, 0x1

    const v0, 0x7f0b0206

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 72
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0b0207

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 73
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    const/4 v2, 0x3

    const v0, 0x7f0b0208

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 74
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    const/4 v2, 0x4

    const v0, 0x7f0b0209

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 75
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    const/4 v2, 0x5

    const v0, 0x7f0b020a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 76
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    const/4 v2, 0x6

    const v0, 0x7f0b020b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 77
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvArray:[Landroid/widget/TextView;

    const/4 v2, 0x7

    const v0, 0x7f0b020c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 78
    const v0, 0x7f0b020e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mTvResult:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cpustress/SwVideoCodec$1;-><init>(Lcom/mediatek/engineermode/cpustress/SwVideoCodec;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

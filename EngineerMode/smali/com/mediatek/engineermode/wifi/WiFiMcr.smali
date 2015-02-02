.class public Lcom/mediatek/engineermode/wifi/WiFiMcr;
.super Lcom/mediatek/engineermode/wifi/WiFiTestActivity;
.source "WiFiMcr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ADDRESS_ALIGN:I = 0x4

.field private static final RADIX:I = 0x10

.field private static final TAG:Ljava/lang/String; = "EM/WiFi_MCR"


# instance fields
.field private mBtnRead:Landroid/widget/Button;

.field private mBtnWrite:Landroid/widget/Button;

.field private mEtAddr:Landroid/widget/EditText;

.field private mEtValue:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mEtAddr:Landroid/widget/EditText;

    .line 55
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mEtValue:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mBtnRead:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mBtnWrite:Landroid/widget/Button;

    return-void
.end method

.method private isAddrAvalible(J)Z
    .locals 4
    .parameter "u4Addr"

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x4

    rem-long v2, p1, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 73
    sget-boolean v6, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v6, :cond_1

    .line 74
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 78
    const-string v6, "EM/WiFi_MCR"

    const-string v7, "read clicked"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-wide/16 v2, -0x1

    .line 80
    .local v2, u4Addr:J
    new-array v4, v8, [J

    .line 82
    .local v4, u4Value:[J
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mEtAddr:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 83
    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/wifi/WiFiMcr;->isAddrAvalible(J)Z

    move-result v6

    if-nez v6, :cond_2

    .line 84
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6}, Ljava/lang/NumberFormatException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "invalid input value"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/wifi/EMWifi;->readMCR32(J[J)I

    .line 92
    const-string v6, "%1$08x"

    new-array v7, v8, [Ljava/lang/Object;

    aget-wide v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mEtValue:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #u4Addr:J
    .end local v4           #u4Value:[J
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mBtnWrite:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 95
    const-string v6, "EM/WiFi_MCR"

    const-string v7, "write clicked"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-wide/16 v2, -0x1

    .line 97
    .restart local v2       #u4Addr:J
    const-wide/16 v4, -0x1

    .line 99
    .local v4, u4Value:J
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mEtAddr:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 100
    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/wifi/WiFiMcr;->isAddrAvalible(J)Z

    move-result v6

    if-nez v6, :cond_4

    .line 101
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6}, Ljava/lang/NumberFormatException;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v6, "invalid input value"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 103
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mEtValue:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v4

    .line 109
    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/engineermode/wifi/EMWifi;->writeMCR32(JJ)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f03009e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    const v0, 0x7f0b04b5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mEtAddr:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0b04b7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mEtValue:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0b04b8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mBtnRead:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0b04b9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mBtnWrite:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiMcr;->mBtnWrite:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

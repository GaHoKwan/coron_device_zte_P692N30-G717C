.class public Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;
.super Landroid/app/Activity;
.source "BtClockSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BtClockSelectionFeature"


# instance fields
.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mHasInit:Z

.field private mSetButton:Landroid/widget/Button;

.field private mStateOn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 68
    iput-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mStateOn:Z

    .line 73
    iput-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mHasInit:Z

    return-void
.end method

.method private initBtTestOjbect()Z
    .locals 2

    .prologue
    .line 162
    const-string v0, "BtClockSelectionFeature"

    const-string v1, "-->initBtTestOjbect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mHasInit:Z

    if-eqz v0, :cond_0

    .line 165
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mHasInit:Z

    .line 178
    :goto_0
    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->init()I

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mHasInit:Z

    .line 173
    const-string v0, "BtClockSelectionFeature"

    const-string v1, "mBtTest initialization failed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mHasInit:Z

    goto :goto_0

    .line 175
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mHasInit:Z

    goto :goto_1
.end method

.method private runHCICommand(Z)V
    .locals 12
    .parameter "state"

    .prologue
    const/16 v9, 0x8

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 124
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->initBtTestOjbect()Z

    .line 125
    const/16 v1, 0xc

    .line 126
    .local v1, cmdLen:I
    new-array v0, v1, [C

    .line 127
    .local v0, cmd:[C
    const/4 v3, 0x0

    .line 129
    .local v3, response:[C
    const-string v5, "BtClockSelectionFeature"

    const-string v8, "-->runHCICommand"

    invoke-static {v5, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    aput-char v6, v0, v7

    .line 131
    const/16 v5, 0x20

    aput-char v5, v0, v6

    .line 132
    const/16 v5, 0xfc

    aput-char v5, v0, v11

    .line 133
    const/4 v5, 0x3

    aput-char v9, v0, v5

    .line 134
    const/4 v5, 0x4

    aput-char v7, v0, v5

    .line 135
    const/4 v5, 0x5

    aput-char v7, v0, v5

    .line 136
    const/4 v5, 0x6

    aput-char v7, v0, v5

    .line 137
    const/4 v5, 0x7

    aput-char v7, v0, v5

    .line 138
    aput-char v7, v0, v9

    .line 139
    const/16 v5, 0x9

    aput-char v7, v0, v5

    .line 140
    const/16 v5, 0xa

    aput-char v7, v0, v5

    .line 141
    const/16 v8, 0xb

    if-ne p1, v6, :cond_1

    move v5, v6

    :goto_0
    int-to-char v5, v5

    aput-char v5, v0, v8

    .line 143
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-nez v5, :cond_0

    .line 144
    new-instance v5, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 146
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v5, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v3

    .line 147
    if-eqz v3, :cond_2

    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, s:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 150
    const-string v5, "response[%d] = 0x%x"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    aget-char v9, v3, v2

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 151
    const-string v5, "BtClockSelectionFeature"

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 141
    goto :goto_0

    .line 154
    :cond_2
    const-string v5, "BtClockSelectionFeature"

    const-string v6, "HCICommandRun failed"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    const/4 v3, 0x0

    .line 158
    return-void
.end method

.method private uninitBtTestOjbect()Z
    .locals 2

    .prologue
    .line 182
    const-string v0, "BtClockSelectionFeature"

    const-string v1, "-->uninitBtTestOjbect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mHasInit:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->unInit()I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "BtClockSelectionFeature"

    const-string v1, "mBtTest un-initialization failed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mHasInit:Z

    .line 191
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mSetButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 112
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mStateOn:Z

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mStateOn:Z

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mSetButton:Landroid/widget/Button;

    const v1, 0x7f0805b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mStateOn:Z

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->runHCICommand(Z)V

    .line 121
    :cond_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mStateOn:Z

    .line 117
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mSetButton:Landroid/widget/Button;

    const v1, 0x7f0805b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 82
    const v1, 0x7f0b00bd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x7f0805b8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v1, 0x7f0b00bc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mSetButton:Landroid/widget/Button;

    .line 85
    iget-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mStateOn:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mSetButton:Landroid/widget/Button;

    const v2, 0x7f0805b7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->mSetButton:Landroid/widget/Button;

    const v2, 0x7f0805b6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "BtClockSelectionFeature"

    const-string v1, "-->onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "BtClockSelectionFeature"

    const-string v1, "-->onStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;->uninitBtTestOjbect()Z

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 106
    return-void
.end method

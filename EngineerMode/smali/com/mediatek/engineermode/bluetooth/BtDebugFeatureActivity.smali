.class public Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;
.super Landroid/app/Activity;
.source "BtDebugFeatureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final KEY_DEBUG_FEATURE:Ljava/lang/String; = "persist.bt.fwdump"

.field private static final TAG:Ljava/lang/String; = "BtDebugFeature"


# instance fields
.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mChecked:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-ne v2, v3, :cond_1

    const-wide v0, 0xffffffffL

    .line 95
    .local v0, value:J
    :goto_0
    new-instance v2, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 96
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->setFWDump(J)I

    .line 98
    const-string v2, "The change will be valid after you restart phone"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 100
    const-string v2, "BtDebugFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DebugFeature isChecked--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0           #value:J
    :cond_0
    return-void

    .line 94
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 80
    const v1, 0x7f0b00be

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x7f0802d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mChecked:Landroid/widget/CheckBox;

    .line 84
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-wide v1, 0xffffffffL

    const-string v3, "persist.bt.fwdump"

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mChecked:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;->mChecked:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

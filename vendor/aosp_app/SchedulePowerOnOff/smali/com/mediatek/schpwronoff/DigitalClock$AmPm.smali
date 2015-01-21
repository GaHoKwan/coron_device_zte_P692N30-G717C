.class Lcom/mediatek/schpwronoff/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/schpwronoff/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAm:Landroid/widget/TextView;

.field private final mAmPmLayout:Landroid/widget/LinearLayout;

.field private final mColorOff:I

.field private final mColorOn:I

.field private mPm:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const v1, 0x7f0a0004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mAm:Landroid/widget/TextView;

    .line 98
    iget-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mPm:Landroid/widget/TextView;

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mColorOn:I

    .line 103
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mColorOff:I

    .line 104
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mAm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mColorOn:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mPm:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mColorOff:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    return-void

    .line 111
    :cond_0
    iget v0, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mColorOff:I

    goto :goto_0

    .line 112
    :cond_1
    iget v0, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mColorOn:I

    goto :goto_1
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/mediatek/schpwronoff/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

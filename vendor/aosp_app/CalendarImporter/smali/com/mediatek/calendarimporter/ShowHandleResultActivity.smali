.class public Lcom/mediatek/calendarimporter/ShowHandleResultActivity;
.super Landroid/app/Activity;
.source "ShowHandleResultActivity.java"


# static fields
.field private static final EXTRA_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field private static final KEY_VIEW_TYPE:Ljava/lang/String; = "VIEW"

.field private static final MONTH_VIEW:Ljava/lang/String; = "MONTH"

.field private static final TAG:Ljava/lang/String; = "ShowHandleResultActivity"


# instance fields
.field private mEventDtStart:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/calendarimporter/ShowHandleResultActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity;->mEventDtStart:J

    return-wide v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-string v8, "ShowHandleResultActivity"

    const-string v9, "onCreate."

    invoke-static {v8, v9}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 62
    const v8, 0x7f030001

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 64
    const v8, 0x1060012

    invoke-static {p0, v8}, Lcom/mediatek/calendarimporter/utils/Utils;->getThemeMainColor(Landroid/content/Context;I)I

    move-result v0

    .line 65
    .local v0, color:I
    const v8, 0x1060012

    if-eq v0, v8, :cond_0

    .line 66
    const v8, 0x7f050003

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 67
    .local v7, view:Landroid/widget/TextView;
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    const v8, 0x7f050004

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    .end local v7           #view:Landroid/widget/TextView;
    :cond_0
    const v8, 0x7f050007

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 72
    .local v4, progressBar:Landroid/widget/ProgressBar;
    const/16 v8, 0x64

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    const v8, 0x7f050005

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, mtTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "eventStartTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity;->mEventDtStart:J

    .line 77
    const-string v8, "SucceedCnt"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 78
    .local v5, success:I
    const-string v8, "totalCnt"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 79
    .local v6, total:I
    const v8, 0x7f050008

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 80
    .local v3, openBtn:Landroid/widget/Button;
    if-lez v5, :cond_1

    if-ge v5, v6, :cond_2

    .line 81
    :cond_1
    const v8, 0x7f04000f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    :goto_0
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v8, 0x7f050009

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 90
    const v8, 0x7f050008

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$1;

    invoke-direct {v9, p0}, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$1;-><init>(Lcom/mediatek/calendarimporter/ShowHandleResultActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v8, 0x7f050009

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$2;

    invoke-direct {v9, p0}, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$2;-><init>(Lcom/mediatek/calendarimporter/ShowHandleResultActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void

    .line 84
    :cond_2
    const v8, 0x7f04000a

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 120
    const-string v0, "eventStartTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity;->mEventDtStart:J

    .line 121
    return-void
.end method

.class public Lcom/mediatek/engineermode/touchscreen/TsRateReport;
.super Landroid/app/Activity;
.source "TsRateReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/touchscreen/TsRateReport$1;,
        Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/TouchScreen/RR"


# instance fields
.field mMetrick:Landroid/util/DisplayMetrics;

.field mView:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport;->mView:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;

    .line 61
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport;->mMetrick:Landroid/util/DisplayMetrics;

    .line 84
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 73
    new-instance v0, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;-><init>(Lcom/mediatek/engineermode/touchscreen/TsRateReport;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport;->mView:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;

    .line 74
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport;->mView:Lcom/mediatek/engineermode/touchscreen/TsRateReport$MyView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsRateReport;->mMetrick:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    return-void
.end method

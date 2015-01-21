.class public Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;
.super Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;
.source "OP09MmsTextSizeAdjustExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OP09OnScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;


# direct methods
.method public constructor <init>(Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;

    .line 110
    invoke-direct {p0}, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;-><init>()V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;Landroid/content/Context;F)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "initTextSize"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;-><init>(Landroid/content/Context;F)V

    .line 115
    return-void
.end method


# virtual methods
.method protected performChangeText(F)V
    .locals 4
    .parameter "size"

    .prologue
    .line 119
    const-string v1, "Mms/OP09MmsTextSizeAdjustExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performChangeText(): Current textSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;

    #getter for: Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F
    invoke-static {v3}, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->access$000(Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new textSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;

    #getter for: Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F
    invoke-static {v1}, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->access$000(Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;)F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;

    #setter for: Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F
    invoke-static {v1, p1}, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->access$002(Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;F)F

    .line 122
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;

    invoke-virtual {v1}, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->getHost()Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;

    move-result-object v0

    .line 123
    .local v0, host:Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;
    if-eqz v0, :cond_0

    .line 124
    const-string v1, "Mms/OP09MmsTextSizeAdjustExt"

    const-string v2, "performChangeText(): Calling host.setTextSize()"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-interface {v0, p1}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;->setTextSize(F)V

    .line 128
    .end local v0           #host:Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;
    :cond_0
    return-void
.end method

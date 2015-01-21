.class Lcom/mediatek/lbs/em/LbsCpAutoTest$11;
.super Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;
.source "LbsCpAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsCpAutoTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$11;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 2
    .parameter "ret"

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$11;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$1200(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$11;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$1200(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$11;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonMnlVerifier:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$1300(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 351
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$11;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$1200(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Failure"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$11;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$1200(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

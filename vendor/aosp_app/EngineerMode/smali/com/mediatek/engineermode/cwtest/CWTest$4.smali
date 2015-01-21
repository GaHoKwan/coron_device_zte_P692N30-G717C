.class Lcom/mediatek/engineermode/cwtest/CWTest$4;
.super Ljava/lang/Object;
.source "CWTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cwtest/CWTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cwtest/CWTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$4;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 438
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 439
    .local v0, extras:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$4;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$100(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 440
    const-string v1, "CWTest/Activity"

    const-string v2, "Start button is pressed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$4;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #calls: Lcom/mediatek/engineermode/cwtest/CWTest;->startCWTest()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$300(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$4;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$400(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 443
    const-string v1, "CWTest/Activity"

    const-string v2, "Stop button is pressed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$4;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #calls: Lcom/mediatek/engineermode/cwtest/CWTest;->stopCWTest()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$500(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    goto :goto_0
.end method

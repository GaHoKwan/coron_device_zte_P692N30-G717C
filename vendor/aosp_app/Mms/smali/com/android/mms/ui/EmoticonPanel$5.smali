.class Lcom/android/mms/ui/EmoticonPanel$5;
.super Ljava/lang/Object;
.source "EmoticonPanel.java"

# interfaces
.implements Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonPanel;->addGiftPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonPanel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel$5;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x1

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$5;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #setter for: Lcom/android/mms/ui/EmoticonPanel;->mGiftIndex:I
    invoke-static {v0, p1}, Lcom/android/mms/ui/EmoticonPanel;->access$1602(Lcom/android/mms/ui/EmoticonPanel;I)I

    .line 457
    if-nez p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$5;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$1200(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 466
    :goto_0
    return-void

    .line 459
    :cond_0
    if-ne p1, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$5;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDotSec:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$1300(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 461
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$5;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDotThird:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$1400(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$5;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDotForth:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$1500(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

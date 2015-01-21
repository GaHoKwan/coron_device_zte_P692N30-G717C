.class Lcom/android/mms/ui/EmoticonPanel$4;
.super Ljava/lang/Object;
.source "EmoticonPanel.java"

# interfaces
.implements Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonPanel;->addDefaultPanel()V
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
    .line 410
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel$4;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x1

    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$4;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #setter for: Lcom/android/mms/ui/EmoticonPanel;->mDefaultIndex:I
    invoke-static {v0, p1}, Lcom/android/mms/ui/EmoticonPanel;->access$1102(Lcom/android/mms/ui/EmoticonPanel;I)I

    .line 414
    if-nez p1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$4;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$1200(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 423
    :goto_0
    return-void

    .line 416
    :cond_0
    if-ne p1, v1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$4;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDotSec:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$1300(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 418
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$4;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDotThird:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$1400(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$4;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDotForth:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$1500(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

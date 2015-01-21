.class Lcom/android/mms/ui/EmoticonPanel$1;
.super Ljava/lang/Object;
.source "EmoticonPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonPanel;->onFinishInflate()V
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
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel$1;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 148
    .local v0, clickedId:I
    const v1, 0x7f0f00ab

    if-ne v1, v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel$1;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonPanel;->access$000(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const v1, 0x7f0f00ad

    if-ne v1, v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel$1;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonPanel;->access$100(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

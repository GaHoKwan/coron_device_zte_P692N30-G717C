.class Lcom/mediatek/FMRadio/FMRadioEngineer$3;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;->initViewAndAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 607
    :pswitch_0
    const-string v3, "FMRadioEngineer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOnClickListener unknown view:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 544
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3100()[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3200(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V

    goto :goto_0

    .line 550
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3100()[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3200(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V

    goto :goto_0

    .line 556
    :pswitch_3
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3100()[F

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3200(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V

    goto :goto_0

    .line 562
    :pswitch_4
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3100()[F

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3200(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V

    goto :goto_0

    .line 568
    :pswitch_5
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3100()[F

    move-result-object v4

    const/4 v5, 0x4

    aget v4, v4, v5

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3200(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V

    goto :goto_0

    .line 573
    :pswitch_6
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3100()[F

    move-result-object v4

    const/4 v5, 0x5

    aget v4, v4, v5

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3200(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V

    goto :goto_0

    .line 580
    :pswitch_7
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 585
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 586
    .local v0, fre:F
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->checkInputFrequency(F)F
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3300(Lcom/mediatek/FMRadio/FMRadioEngineer;F)F

    move-result v1

    .line 587
    .local v1, fre_checked:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    .line 589
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    const v5, 0x7f04006f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2700(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 593
    :cond_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3200(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V

    goto/16 :goto_0

    .line 601
    .end local v0           #fre:F
    .end local v1           #fre_checked:F
    .end local v2           #s:Ljava/lang/String;
    :pswitch_8
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x7f06000b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

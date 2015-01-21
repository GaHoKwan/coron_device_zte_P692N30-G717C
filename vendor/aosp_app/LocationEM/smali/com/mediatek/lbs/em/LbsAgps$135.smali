.class Lcom/mediatek/lbs/em/LbsAgps$135;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->editNumberSetting(Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$eItemId:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3088
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$eItemId:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 3094
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 3095
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iget-object v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    check-cast v2, Lcom/mediatek/common/agps/MtkAgpsTargetArea;

    .line 3097
    .local v2, tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    sget-object v3, Lcom/mediatek/lbs/em/LbsAgps$137;->$SwitchMap$com$mediatek$lbs$em$LbsAgps$NUMBER_EDIT_NAME_LIST:[I

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$eItemId:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    invoke-virtual {v4}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3141
    :goto_0
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3147
    .end local v0           #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .end local v2           #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    :goto_1
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 3148
    return-void

    .line 3099
    .restart local v0       #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .restart local v2       #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicNFix:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$10200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3100
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicNumOfFix:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3142
    .end local v0           #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .end local v2           #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    :catch_0
    move-exception v1

    .line 3143
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v3}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ERR: Parameters error!!"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3103
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .restart local v2       #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicInter:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$10300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3104
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicInterval:I

    goto :goto_0

    .line 3107
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicSTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$10400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3108
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicStartTime:I

    goto/16 :goto_0

    .line 3111
    :pswitch_3
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMinInter:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$10500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3112
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventInterval:I

    goto/16 :goto_0

    .line 3115
    :pswitch_4
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMaxNum:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$10600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3116
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventMaxNumReport:I

    goto/16 :goto_0

    .line 3119
    :pswitch_5
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStartTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$10700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3120
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStartTime:I

    goto/16 :goto_0

    .line 3123
    :pswitch_6
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStopTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$10800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3124
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStopTime:I

    goto/16 :goto_0

    .line 3127
    :pswitch_7
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->radius:I

    .line 3128
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoRadius:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$10900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3131
    :pswitch_8
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lat:F

    .line 3132
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLat:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$11000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3135
    :pswitch_9
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lng:F

    .line 3136
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLong:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$11100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$135;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3097
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

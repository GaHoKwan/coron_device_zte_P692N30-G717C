.class Lcom/zte/retrieve/service/RetrieveLockView$4;
.super Ljava/lang/Object;
.source "RetrieveLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/RetrieveLockView;-><init>(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionOperator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;

.field private final synthetic val$etFuncPassword:Landroid/widget/EditText;

.field private final synthetic val$tvError:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    iput-object p2, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->val$etFuncPassword:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->val$tvError:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->val$etFuncPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, funcPwd:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LockView funcPwd is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, configPwd:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/retrieve/controller/Controller;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zte/retrieve/controller/Controller;->isSecurityNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    :cond_0
    const-string v4, "LockView input right password to unlock and unreglistener"

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/zte/retrieve/service/RetrieveLockView;->access$14(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->stateListner:Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;
    invoke-static {v5}, Lcom/zte/retrieve/service/RetrieveLockView;->access$15(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 142
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/zte/retrieve/controller/Controller;->setAnswerStatus(Z)V

    .line 143
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/retrieve/controller/Controller;->setUnlock()Z

    .line 144
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/retrieve/controller/Controller;->setUnalarm()Z

    .line 145
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->val$tvError:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v4}, Lcom/zte/retrieve/service/RetrieveLockView;->access$10(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->alarm(Z)I

    .line 159
    :cond_1
    :goto_1
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "LockView input wrong password to unlock"

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->val$etFuncPassword:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->val$tvError:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mInputCnt:I
    invoke-static {v4}, Lcom/zte/retrieve/service/RetrieveLockView;->access$16(Lcom/zte/retrieve/service/RetrieveLockView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    #setter for: Lcom/zte/retrieve/service/RetrieveLockView;->mInputCnt:I
    invoke-static {v4, v5}, Lcom/zte/retrieve/service/RetrieveLockView;->access$17(Lcom/zte/retrieve/service/RetrieveLockView;I)V

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    const v5, 0x7f090033

    invoke-virtual {v4, v5}, Lcom/zte/retrieve/service/RetrieveLockView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    .line 154
    .local v3, surfaceView:Landroid/view/SurfaceView;
    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 155
    const-string v4, "----has input wrong password three times!----"

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView$4;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    invoke-virtual {v4}, Lcom/zte/retrieve/service/RetrieveLockView;->takePicture()V

    goto :goto_1
.end method

.class Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$3;
.super Ljava/lang/Object;
.source "NetSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$3;->this$1:Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 435
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    const v4, 0x7f0e01bd

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, value:Ljava/lang/String;
    const/4 v1, 0x1

    .line 440
    .local v1, calcDay:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 441
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 444
    :cond_0
    const/4 v2, 0x0

    .line 445
    .local v2, showStr:Ljava/lang/String;
    if-gtz v1, :cond_1

    .line 446
    const/4 v1, 0x1

    .line 448
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$3;->this$1:Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;

    iget-object v5, v5, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    const v6, 0x7f0a00f9

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$3;->this$1:Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$3;->this$1:Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;

    iget-object v5, v5, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setCalcDay(II)V

    .line 451
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$3;->this$1:Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    const v5, 0x7f0e01e6

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 452
    .local v0, calDayTxt:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method

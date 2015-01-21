.class Lcom/zte/heartyservice/net/NetSettingListener$2;
.super Ljava/lang/Object;
.source "NetSettingListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetSettingListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetSettingListener;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetSettingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetSettingListener$2;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 163
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

    .line 167
    .local v3, value:Ljava/lang/String;
    const/4 v1, -0x1

    .line 168
    .local v1, percent:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 172
    :cond_0
    const/4 v2, 0x0

    .line 173
    .local v2, showStr:Ljava/lang/String;
    if-gtz v1, :cond_1

    .line 174
    const/4 v1, -0x1

    .line 175
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetSettingListener$2;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v4

    const v5, 0x7f0a00fa

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/net/NetSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    :goto_0
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetSettingListener$2;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetSettingListener;->access$100(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonthFlowWarnPct(I)V

    .line 181
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetSettingListener$2;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v4

    const v5, 0x7f0e01e1

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    .local v0, monthWarnPctTxt:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void

    .line 177
    .end local v0           #monthWarnPctTxt:Landroid/widget/TextView;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener$2;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v5

    const v6, 0x7f0a00f5

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

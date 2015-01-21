.class Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;
.super Ljava/lang/Object;
.source "NetIdleHoursSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetIdleHoursSetting;->showDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v6, 0x7f0a00e4

    .line 322
    move-object v4, p1

    check-cast v4, Landroid/app/Dialog;

    const v5, 0x7f0e01bd

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, value:Ljava/lang/String;
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    const v4, 0x7f0e03c3

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-virtual {v4}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getText()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, unit:Ljava/lang/String;
    const/4 v0, -0x1

    .line 326
    .local v0, flowSize:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 330
    :cond_0
    const/4 v1, 0x0

    .line 331
    .local v1, showStr:Ljava/lang/String;
    if-gtz v0, :cond_1

    .line 332
    const/4 v0, -0x1

    .line 333
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    const v5, 0x7f0a00e6

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    :goto_0
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$500(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$000(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursMax(II)V

    .line 350
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mIdleHoursMaxSummary:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$1300(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    return-void

    .line 335
    :cond_1
    const-string v4, "GB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    mul-int/lit16 v0, v0, 0x400

    goto :goto_0

    .line 339
    :cond_2
    const/16 v4, 0x400

    if-lt v0, v4, :cond_3

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_3

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v5, v0, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 342
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$2;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    const v6, 0x7f0a00e3

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

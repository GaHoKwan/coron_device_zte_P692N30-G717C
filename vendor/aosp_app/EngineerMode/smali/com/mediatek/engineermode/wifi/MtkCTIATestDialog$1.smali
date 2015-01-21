.class Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;
.super Ljava/lang/Object;
.source "MtkCTIATestDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, val:I
    const/4 v1, 0x0

    .line 200
    .local v1, id:I
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$000(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_2

    .line 203
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIdEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$100(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v1, v5

    .line 206
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$200(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v3, v5

    .line 209
    int-to-long v5, v1

    int-to-long v7, v3

    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/engineermode/wifi/EMWifi;->doCTIATestSet(JJ)I

    move-result v2

    .line 210
    .local v2, ret:I
    if-eqz v2, :cond_0

    .line 211
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$200(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, "ERROR"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    const-string v5, "EM/CTIATestDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set ret: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VAL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v2           #ret:I
    :cond_1
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "EM/CTIATestDialog"

    const-string v6, "set number format error"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$200(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$300(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 222
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIdEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$100(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v1, v5

    .line 224
    const/4 v5, 0x1

    new-array v4, v5, [J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 225
    .local v4, value:[J
    int-to-long v5, v1

    invoke-static {v5, v6, v4}, Lcom/mediatek/engineermode/wifi/EMWifi;->doCTIATestGet(J[J)I

    move-result v2

    .line 226
    .restart local v2       #ret:I
    const-string v5, "EM/CTIATestDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get ret: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VAL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$200(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;

    move-result-object v6

    if-nez v2, :cond_3

    const/4 v5, 0x0

    aget-wide v7, v4, v5

    const/16 v5, 0x10

    invoke-static {v7, v8, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 231
    .end local v2           #ret:I
    .end local v4           #value:[J
    :catch_1
    move-exception v0

    .line 232
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "EM/CTIATestDialog"

    const-string v6, "get number format error"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;->this$0:Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    #getter for: Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->access$200(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #ret:I
    .restart local v4       #value:[J
    :cond_3
    :try_start_2
    const-string v5, "UNKNOWN"
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

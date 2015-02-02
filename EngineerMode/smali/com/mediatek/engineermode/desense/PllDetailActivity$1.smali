.class Lcom/mediatek/engineermode/desense/PllDetailActivity$1;
.super Ljava/lang/Object;
.source "PllDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/desense/PllDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/desense/PllDetailActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/desense/PllDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity$1;->this$0:Lcom/mediatek/engineermode/desense/PllDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 51
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity$1;->this$0:Lcom/mediatek/engineermode/desense/PllDetailActivity;

    #getter for: Lcom/mediatek/engineermode/desense/PllDetailActivity;->mEtValue:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/mediatek/engineermode/desense/PllDetailActivity;->access$000(Lcom/mediatek/engineermode/desense/PllDetailActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, editValue:Ljava/lang/String;
    const-string v3, "EM/DesensePllDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "editValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v3, "^[0-9a-fA-F]{1,16}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 54
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 55
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity$1;->this$0:Lcom/mediatek/engineermode/desense/PllDetailActivity;

    #getter for: Lcom/mediatek/engineermode/desense/PllDetailActivity;->mId:I
    invoke-static {v3}, Lcom/mediatek/engineermode/desense/PllDetailActivity;->access$100(Lcom/mediatek/engineermode/desense/PllDetailActivity;)I

    move-result v3

    #calls: Lcom/mediatek/engineermode/desense/PllDetailActivity;->pllSetClock(ILjava/lang/String;)I
    invoke-static {v3, v0}, Lcom/mediatek/engineermode/desense/PllDetailActivity;->access$200(ILjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity$1;->this$0:Lcom/mediatek/engineermode/desense/PllDetailActivity;

    const-string v4, "Set PLL fail"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity$1;->this$0:Lcom/mediatek/engineermode/desense/PllDetailActivity;

    const-string v4, "Set PLL success"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 64
    :cond_1
    const-string v3, "EM/DesensePllDetail"

    const-string v4, "set button NumberFormatException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/PllDetailActivity$1;->this$0:Lcom/mediatek/engineermode/desense/PllDetailActivity;

    const-string v4, "The input number is wrong!"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

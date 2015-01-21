.class Lcom/mediatek/lbs/em/LbsCpAutoTest$8;
.super Ljava/lang/Object;
.source "LbsCpAutoTest.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsCpAutoTest;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$8;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 317
    .local v0, index:I
    if-nez v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$8;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/UtilityStringList;->clear()V

    .line 319
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$8;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestMessage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$500(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$8;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/lbs/em/UtilityStringList;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$8;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$600(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->controlMnl(I)V

    .line 322
    const/4 v1, 0x1

    return v1
.end method

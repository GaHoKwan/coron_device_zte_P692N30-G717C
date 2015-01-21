.class Lcom/mediatek/lbs/em/LbsCpAutoTest$6;
.super Ljava/lang/Object;
.source "LbsCpAutoTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 246
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    const-string v1, "/data/agps_supl/agps_emulator2"

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->fileExist(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$700(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$1100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/UtilityStringList;->clear()V

    .line 252
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v0

    const-string v1, "[Failure] /data/agps_supl/agps_emulator2 does not exist, please enable Auto Test<br>"

    invoke-virtual {v0, v1}, Lcom/mediatek/lbs/em/UtilityStringList;->add(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$500(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/UtilityStringList;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

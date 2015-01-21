.class Lcom/mediatek/lbs/em/LbsCpAutoTest$9;
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
    .line 325
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$9;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 328
    .local v0, index:I
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$9;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$600(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->startCpAutoTest(I)V

    .line 329
    const/4 v1, 0x1

    return v1
.end method

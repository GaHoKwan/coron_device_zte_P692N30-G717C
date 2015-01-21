.class Lcom/mediatek/lbs/em/LbsCpAutoTest$2;
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
    .line 208
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$2;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$2;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$600(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->resetAgpsd()V

    .line 211
    return-void
.end method

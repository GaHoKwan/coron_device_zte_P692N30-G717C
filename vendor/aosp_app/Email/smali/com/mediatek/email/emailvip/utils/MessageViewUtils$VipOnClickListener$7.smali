.class Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$7;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$7;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$7;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$7;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$7;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->onClickBadge()V

    .line 678
    return-void
.end method

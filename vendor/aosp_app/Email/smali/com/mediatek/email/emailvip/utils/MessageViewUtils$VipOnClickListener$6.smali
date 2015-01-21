.class Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

.field final synthetic val$vipView:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iput-object p2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;->val$vipView:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 630
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    #setter for: Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mClicked:Z
    invoke-static {v0, v4}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->access$202(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;Z)Z

    .line 631
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;->val$vipView:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;

    iget-object v3, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    #getter for: Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBlack:I
    invoke-static {v3}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->access$300(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)I

    move-result v3

    iget-object v5, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    #getter for: Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mVipViewPadding:I
    invoke-static {v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->access$400(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)I

    move-result v5

    #calls: Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->setVipViewState(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;IZI)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->access$500(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;IZI)V

    .line 632
    return-void
.end method

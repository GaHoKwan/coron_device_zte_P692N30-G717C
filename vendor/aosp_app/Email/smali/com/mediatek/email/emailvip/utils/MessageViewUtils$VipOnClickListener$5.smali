.class Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;


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

.field final synthetic val$addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iput-object p2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->val$addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawn()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 599
    iget-object v7, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v7, v7, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    if-nez v7, :cond_0

    .line 619
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v7, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v7, v7, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, emailAddress:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 604
    iget-object v7, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->val$addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v7, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->val$addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 608
    .local v3, paint:Landroid/text/TextPaint;
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v5, v7

    .line 609
    .local v5, textWidth:I
    iget-object v7, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->val$addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 610
    .local v6, viewWidth:I
    if-le v5, v6, :cond_2

    .line 611
    const-string v7, "@"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, parts:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v0, v7

    .line 613
    .local v0, domainWidth:I
    const/4 v7, 0x0

    aget-object v7, v4, v7

    sub-int v8, v6, v0

    int-to-float v8, v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v3, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 615
    .local v1, ellipsizedUserName:Ljava/lang/CharSequence;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    .end local v0           #domainWidth:I
    .end local v1           #ellipsizedUserName:Ljava/lang/CharSequence;
    .end local v4           #parts:[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->val$addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v7, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;->val$addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    invoke-virtual {v7}, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;->removeOnDrawnListener()V

    goto :goto_0
.end method

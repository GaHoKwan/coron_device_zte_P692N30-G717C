.class final Lcom/mediatek/email/emailvip/utils/MessageViewUtils$1;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateAddressesView(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$etView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

.field final synthetic val$spannableString:Landroid/text/SpannableStringBuilder;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$1;->val$etView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    iput-object p2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$1;->val$spannableString:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawn()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$1;->val$etView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$1;->val$spannableString:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->setAddressView(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    .line 280
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$1;->val$etView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;->removeOnDrawnListener()V

    .line 281
    return-void
.end method

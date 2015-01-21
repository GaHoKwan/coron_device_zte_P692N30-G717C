.class Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1$1;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1$1;->this$1:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addVipOverMax()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1$1;->this$1:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;

    iget-object v0, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v0, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    const v1, 0x7f080041

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 494
    return-void
.end method

.method public tryToAddDuplicateVip()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1$1;->this$1:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;

    iget-object v0, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v0, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    const v1, 0x7f080040

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 490
    return-void
.end method

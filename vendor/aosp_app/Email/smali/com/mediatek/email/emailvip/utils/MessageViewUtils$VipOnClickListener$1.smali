.class Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;
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
    .line 483
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 486
    new-instance v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1$1;

    invoke-direct {v0, p0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1$1;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;)V

    .line 496
    .local v0, callback:Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/emailcommon/provider/VipMember;->addVIP(Landroid/content/Context;Lcom/android/emailcommon/mail/Address;Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;)Z

    .line 497
    invoke-static {}, Lcom/mediatek/email/emailvip/VipMemberCache;->updateVipMemberCache()V

    .line 498
    return-void
.end method

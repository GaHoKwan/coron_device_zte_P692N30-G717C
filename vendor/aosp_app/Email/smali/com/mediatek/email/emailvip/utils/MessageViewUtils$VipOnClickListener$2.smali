.class Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$2;
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
    .line 501
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$2;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$2;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v0, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    const-wide/high16 v1, 0x1000

    iget-object v3, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$2;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v3}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/VipMember;->deleteVipMembers(Landroid/content/Context;JLjava/lang/String;)I

    .line 506
    invoke-static {}, Lcom/mediatek/email/emailvip/VipMemberCache;->updateVipMemberCache()V

    .line 507
    return-void
.end method
